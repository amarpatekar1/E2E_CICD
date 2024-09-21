*** Settings ***
Documentation    Suite description
Library     Selenium2Library
Library     OperatingSystem


*** Variables ***
${LINK_NAME}        Login
${FILTER_LINK}      xpath=//*[@id="header_"]/div/div/nav/ul[2]/li[1]/div/div/ul[1]/li[3]/a
${LOGIN_BUTTON}     xpath=/html/body/div/div/div/section/div/a[1]
${USERNAME}         admin@qa2securly.com
${PASSWORD}         Qa@2Securly
${USERNAME_FIELD}   id=identifierId
${PASSWORD_FIELD}   id=password
${NEXT_BUTTON}      xpath=/html/body/div[1]/div[1]/div[2]/c-wiz/div/div[3]/div/div[1]/div/div/button/span
${SUBMIT_BUTTON}    id=login-button
${NEW_URL}          https://rtqawww.securly.com/app/filter/#/policy-editor/global-settings
${TOGGLE_XPATH}     /html/body/app-root/div/div/main/section/ng-component/div/div[2]/app-policy-editor-main/div/app-policy-editor-global-settings/div/div[2]/ngb-tabset/div/div/div[2]/div/app-policy-editor-global-settings-list/div/div/form/ul/li[1]/div/div/div[2]/label/div



*** Keywords ***
Load
    Go To               ${START_URL}


Verify login and password
    Click link      ${LINK_NAME}
    Click link      ${FILTER_LINK}
    Click link      ${LOGIN_BUTTON}
    Input Text      ${USERNAME_FIELD}    ${USERNAME}
#    Click link      ${NEXT_BUTTON}
    Wait Until Element Is Visible   css=.VfPpkd-LgbsSe-OWXEXe-k8QpJ > span:nth-child(4)
    Click Element    css=.VfPpkd-LgbsSe-OWXEXe-k8QpJ > span:nth-child(4)
#    Input Text      ${PASSWORD_FIELD}    ${PASSWORD}
    Wait Until Element Is Visible    css=#password > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > input:nth-child(1)
    Input Text    css=#password > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > input:nth-child(1)    Qa@2Securly
    Wait Until Element Is Visible    css=.VfPpkd-LgbsSe-OWXEXe-k8QpJ > span:nth-child(4)
    Click Element    css=.VfPpkd-LgbsSe-OWXEXe-k8QpJ > span:nth-child(4)
    Wait Until Element Is Visible    css=#totpPin

    # Pause for manual input
    Log To Console    Please enter the 2-step verification code manually.
    Sleep    15s    # Adjust the time as needed

    # Click the Next button after manual input
    Wait Until Element Is Visible    css=.VfPpkd-LgbsSe-OWXEXe-k8QpJ > span:nth-child(4)
    Click Element    css=.VfPpkd-LgbsSe-OWXEXe-k8QpJ > span:nth-child(4)
    Sleep    15s

#Navigate to global settings
#    Go To    ${NEW_URL}
#    Sleep    15s
#
#    Wait Until Element Is Visible    xpath=${TOGGLE_XPATH}
#    ${is_enabled}=    Is Toggle Enabled
#    Run Keyword If    not ${is_enabled}    Click Element    xpath=${TOGGLE_XPATH}
#    Close Browser
#
#Is Toggle Enabled
#    ${class}=    Get Element Attribute    xpath=${TOGGLE_XPATH}    class
#    ${is_enabled}=    Run Keyword And Return Status    Should Contain    ${class}    active
#    [Return]    ${is_enabled}
#
#    ${rc}    ${output}=    Run And Return Rc And Output    networksetup -setdnsservers Wi-Fi ${DNS_IP}
#    Should Be Equal As Integers    ${rc}    0    msg=Failed to set DNS
#    Log    DNS set to ${DNS_IP}
#
#
#    Open Browser    ${MAXIM_URL}    browser=chrome
#    Wait Until Page Contains Element    xpath=//body    timeout=10s
#    Log    Navigated to Maxim.com
#
#    Sleep    15s
