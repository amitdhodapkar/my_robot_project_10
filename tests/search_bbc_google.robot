*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Test Cases ***
Search BBC on Google (Headless with WebDriver-Manager)
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --window-size=1920,1080

    ${driver_path}=    Evaluate    __import__('webdriver_manager.chrome').ChromeDriverManager().install()
    Open Browser    https://www.google.com    chrome    executable_path=${driver_path}    options=${options}

    Input Text      name=q    BBC
    Press Keys      name=q    ENTER
    Wait Until Page Contains    BBC - Homepage
    Close Browser
