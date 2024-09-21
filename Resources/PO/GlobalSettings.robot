*** Settings ***
Documentation    Suite description
Library     Selenium2Library
Library     OperatingSystem

*** Variables ***
${NEW_URL}          https://rtqawww.securly.com/app/filter/#/policy-editor/global-settings
${TOGGLE_XPATH}     /html/body/app-root/div/div/main/section/ng-component/div/div[2]/app-policy-editor-main/div/app-policy-editor-global-settings/div/div[2]/ngb-tabset/div/div/div[2]/div/app-policy-editor-global-settings-list/div/div/form/ul/li[1]/div/div/div[2]/label/div
${TOGGLE_CHECKBOX_ID}    forceLogins

*** Keywords ***
Navigate to global settings
    Go To    ${NEW_URL}
    Sleep    15s
    Wait Until Element Is Visible    xpath=${TOGGLE_XPATH}
    ${is_enabled}=    Is Toggle Enabled
    Run Keyword If    not ${is_enabled}    Click Element    xpath=${TOGGLE_XPATH}
    Close Browser


#Is Toggle Enabled
#    ${class}=    Get Element Attribute    xpath=${TOGGLE_XPATH}    class
#    ${is_enabled}=    Run Keyword And Return Status    Should Contain    ${class}    active
#    [Return]    ${is_enabled}


Is Toggle Enabled
    ${checked}=    Execute JavaScript    return document.getElementById('${TOGGLE_CHECKBOX_ID}').checked;
    [Return]    ${checked}

Toggle Button
    Execute JavaScript    document.getElementById('${TOGGLE_CHECKBOX_ID}').click();
    Log    Toggle button was clicked

Check And Toggle Button If Needed
    Wait Until Element Is Visible    id=${TOGGLE_CHECKBOX_ID}
    ${is_enabled}=    Is Toggle Enabled
    Run Keyword If    not ${is_enabled}    Toggle Button
    ${new_state}=    Is Toggle Enabled
    Log    Toggle button is now: ${new_state}



