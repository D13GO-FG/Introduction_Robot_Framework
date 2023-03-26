*** Test Cases ***
#For Loop 1
#    FOR   ${i}  IN RANGE    1   10
#        Log To Console    ${i}
#    END

#For Loop 2
#    FOR   ${i}  IN  1  2  3  4  5  6  7  8
#        Log To Console    ${i}
#    END

#For Loop 3 with list
#    @{items}    Create List    1  2  3  4  5
#    FOR   ${i}  IN    @{items}
#        Log To Console    ${i}
#    END

#For Loop 4
#    FOR   ${i}  IN  luis    diego   alexis  gerardo
#        Log To Console    ${i}
#    END

#For Loop 5
#    @{nameList}     Create List    luis    diego   alexis  gerardo
#    FOR   ${i}  IN  @{nameList}
#        Log To Console    ${i}
#    END

For Loop 6 with exist
    @{items}     Create List    1   2   3   4   5
    FOR   ${i}  IN  @{items}
        Log To Console    ${i}
        Exit For Loop If    ${i} == 3
    END