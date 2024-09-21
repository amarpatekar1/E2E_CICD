*** Settings ***
Library    SeleniumLibrary
Library    WebDriverManager

*** Variables ***
${URL}              https://rtqawww.securly.com/
${BROWSER}          chrome
${driver_path}      /Users/amarpatekar1/Documents/chromedriver
${USERNAME}         admin@qa2securly.com
${PASSWORD}         Qa@2Securly
${USERNAME_FIELD}   id=identifierId
${PASSWORD_FIELD}   id=password
${NEXT_BUTTON}      class=VfPpkd-LgbsSe VfPpkd-LgbsSe-OWXEXe-k8QpJ VfPpkd-LgbsSe-OWXEXe-dgl2Hf nCP5yc AjY5Oe DuMIQc LQeN7 BqKGqe Jskylb TrZEUc lw1w4b
${SUBMIT_BUTTON}    id=login-button
${LINK_NAME}        Login
${FILTER_LINK}      Filter
${LOGIN_BUTTON}     Sign in with Google


*** Test Cases ***
Login to UI
    Open Chrome Browser
    Maximize Browser Window
    Go To    ${URL}
    Click link      ${LINK_NAME}
    Click link      ${FILTER_LINK}
    Click Button    ${LOGIN_BUTTON}
    Input Text      ${USERNAME_FIELD}    ${USERNAME}
    Click Button    ${NEXT_BUTTON}
    Input Text      ${PASSWORD_FIELD}    ${PASSWORD}
#    Click Button    ${SUBMIT_BUTTON}
    # Add verification step here, e.g.:
    # Wait Until Page Contains    Welcome, User
    [Teardown]    Close Browser

*** Keywords ***
Open Chrome Browser
    ${driver_path}=    WebDriverManager.chromedriver
    Create Webdriver    Chrome    executable_path=${driver_path}