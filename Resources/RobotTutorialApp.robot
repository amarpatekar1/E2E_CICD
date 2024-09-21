*** Settings ***
Documentation    Suite description
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/TeamPage.robot
Resource    ../Resources/PO/Login.robot
Resource    ../Resources/PO/GlobalSettings.robot
Resource    ../Resources/PO/SetDns.robot
Resource    ../Resources/PO/Filtering_Check.robot

*** Keywords ***
Site visit
    LandingPage.Load
    #LandingPage.Verify Page Loaded

Login
    Login.Load
    Login.Verify login and password
    GlobalSettings.Navigate to global settings
    SetDns.Set DNS on system
    Filtering_Check.Navigate as a kid

