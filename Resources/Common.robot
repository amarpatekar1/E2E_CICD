*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keywords ***
Begin Web Test
        open browser        about:blank       ${BROWSER}

End Web Test
        close browser