*** Settings ***
Documentation    Suite description
Resource    ../Resources/Common.robot
Resource    ../Resources/RobotTutorialApp.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***
${BROWSER} =  firefox
# ${CONTACT} =  Contact
${START_URL} =  https://rtqawww.securly.com/


*** Test Cases ***
Should be able to navigate to the site and click Contact
    RobotTutorialApp.Site visit


#Should be able to Login
#    RobotTutorialApp.Login
#    RobotTutorialApp.Verify landing page
#    RobotTutorialApp.click Contact link
#    RobotTutorialApp.Verify Team Page