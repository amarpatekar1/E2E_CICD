*** Settings ***
Documentation    Suite description
Library     Selenium2Library

*** Keywords ***
Begin Web Test
        open browser        about:blank       ${BROWSER}

End Web Test
        close browser