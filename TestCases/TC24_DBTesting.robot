*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup       Connect To Database    psycopg2    ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown    Disconnect From Database

*** Variables ***
${DBName}   sampleDB
${DBUser}   postgres
${DBPass}   qwe123
${DBHost}   localhost
${DBPort}   5432

*** Test Cases ***
#Create person table
#    ${output} =    Execute SQL String    CREATE TABLE person (id integer unique,first_name varchar(20),last_name varchar(20));
#    Log To Console    ${output}
#    Should Be Equal As Strings    ${output}    None

#Inserting Data in person Table
#    # Simple Record
##   ${output} =    Execute SQL String    Insert into person values(101,'Diego','Flores');
#
#    # Multiple records
#    ${output} =    Execute Sql Script     ./TestData/mydb_person_insertData.sql
#    Log To Console    ${output}
#    Should Be Equal As Strings    ${output}    None

Check Alexis record present in Person Table
    Check If Exists In Database    select id from person where first_name='Alexis';

Check Juan record Not present in Person Table
    Check If Not Exists In Database    select id from person where first_name='Juan';

Check Person Table exists in sampleDB database
    Table Must Exist    person

Verify Row Count is Zero
    Row Count Is 0    select * from person where first_name = 'xyz';

Verify Row Count is Equal to Some Value
    Row Count Is Equal To X    select * from person where first_name = 'Diego';     1

Verify Row Count is Greater Than Some Value
    Row Count Is Greater Than X    select * from person where first_name = 'Diego';     0

Verify Row Count is Less Than Some Value
    Row Count Is Less Than X    select * from person where first_name = 'Diego';     3

Update record in person table
    ${output}=  Execute Sql String    Update person set first_name='Luis' where id=102
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}     None

Retrieve Records from Person Table
    @{queryResults}=     Query    Select * from person;
    Log To Console  Many @{queryResults}

Delete Records from person table
    ${output}=  Execute Sql String    Delete from person;
    Should Be Equal As Strings    ${output}     None