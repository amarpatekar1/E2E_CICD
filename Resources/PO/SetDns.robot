*** Settings ***
Documentation    Suite description
Library     Selenium2Library
Library     OperatingSystem

*** Variables ***
${DNS_IP}           34.217.196.198



*** Keywords ***
Set DNS on system
    ${rc}    ${output}=    Run And Return Rc And Output    networksetup -setdnsservers Wi-Fi ${DNS_IP}
    Should Be Equal As Integers    ${rc}    0    msg=Failed to set DNS
    Log    DNS set to ${DNS_IP}