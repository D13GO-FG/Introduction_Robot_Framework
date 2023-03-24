*** Settings ***

*** Test Cases ***
Using Variable
    # Log to Console a message
    Log To Console    My name is Diego
    # Log to Console with variables
    Log To Console    My name is ${name}. My favorite color is ${color} and I am a ${team}

*** Variables ***
${name}  Luis
${color}  Red
${team}  Griffyndor