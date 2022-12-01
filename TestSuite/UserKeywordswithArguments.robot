*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resource.robot

*** Variables ***
${url}    https://demo.guru99.com/test/newtours/
${browser}    headlesschrome

*** Test Cases ***
TC1
    ${PageTitle}=    LaunchBrowser    ${url}    ${browser}
    Log To Console    ${PageTitle}   
    Log    ${PageTitle}     
    Input Text    name:userName    Aarif
    Input Text    name:password    aarif@123
    
    
