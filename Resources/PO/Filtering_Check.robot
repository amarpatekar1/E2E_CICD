*** Settings ***
Documentation    Suite description
Library     Selenium2Library
Library     OperatingSystem


*** Variables ***
${SITE_URL}        https://www.maxim.com


*** Keywords ***
Navigate as a kid
    Open Browser    ${SITE_URL}    browser=chrome
    Wait Until Page Contains Element    xpath=//body    timeout=10s
    Log    Navigated to Maxim.com
    Sleep    15s
    Input Text    id=identifierId    oleksii@qa2securly.com
#    Wait Until Element Is Visible    css=button[jsname="LgbsSe"]
    Click Button    Next
    Sleep    10s
    Wait Until Element Is Visible    name=Passwd
    Input Password    name=Passwd    Demo123!
    Click Button    Next
    Sleep    10s

    # Assert each piece of information
    Element Should Be Visible    xpath=//span[contains(text(), 'Reason:')]/following-sibling::span[@class='medium'][contains(text(), 'Blocked by Category')]
#    Page Should Contain    Category: Pornography
#    Page Should Contain    User email: oleksii@qa2securly.com
#    Page Should Contain    Policy: Oleksii
#    Page Should Contain    Filtering methods: DNS

    # Log success message
    Log    All expected elements found on the blocked page.

