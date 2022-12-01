*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LoginURL}    https://admin-demo.nopcommerce.com/login
${browserName}    Chrome


*** Keywords ***
Open my browser
    Open Browser    ${LoginURL}    ${browserName}
    Maximize Browser Window
    
Close Browsers
    Close All Browsers
    
OpenLoginPage
    Go To    ${LoginURL}
    
Input UserName
    [Arguments]    ${UserName}
    Input Text    id:Email    ${UserName}
    
Input Pwd
    [Arguments]    ${Pwd}
    Input Text    id:Password    ${Pwd}
    
Click Login button
    Click Element    class:button-1 login-button
    
Click Logout button
    Click Link    Logout  
    
Error message should be visible
    Page Should Contain    Login was unsuccessful
    
Dashboard message should be visible
    Page Should Contain    Dashboard
    
