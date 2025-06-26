*** Settings ***
Documentation     A simple test to verify login keyword
Library           OperatingSystem

*** Variables ***
${SEARCH}    defaultvalue

*** Test Cases ***
Search Example
    Log    SEARCH VALUE IS: ${SEARCH}

# Sample Test Case
#     [Documentation]    This is a simple test case
#     Log To Console     Hello from Robot Framework!
#     # Should Be Equal    ${2 + 2}    4