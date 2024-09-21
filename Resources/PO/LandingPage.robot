*** Settings ***
Documentation    Suite description
Library     Selenium2Library

*** Keywords ***
Load
    Go To               ${START_URL}

#Verify Page Loaded
#    page should contain     We have updated our Privacy Policy. View the new policy at