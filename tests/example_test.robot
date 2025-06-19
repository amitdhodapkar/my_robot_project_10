*** Settings ***
Documentation     A simple test to verify login keyword
Library           OperatingSystem

*** Test Cases ***
Sample Test Case
    [Documentation]    This is a simple test case
    Log To Console     Hello from Robot Framework!
    # Should Be Equal    ${2 + 2}    4
