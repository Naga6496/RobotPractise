*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    https://demo.guru99.com/test/newtours/
${browser}    headlesschrome

*** Test Cases ***
TC1
    LaunchBrowser
    Input Text    name:userName    Aarif
    Input Text    name:password    aarif@123
    
*** Keywords ***
LaunchBrowser
    Open Browser  ${url}    ${browser}  
    Maximize Browser Window
            