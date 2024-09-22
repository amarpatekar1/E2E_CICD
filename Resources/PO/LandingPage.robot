*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keywords ***
Load
    Go To               ${START_URL}

#Verify Page Loaded
#    page should contain     We have updated our Privacy Policy. View the new policy at