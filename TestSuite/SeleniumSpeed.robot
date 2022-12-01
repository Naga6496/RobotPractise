*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
Reg Test
    ${speed}=    get selenium speed
    log to console    ${speed}
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    2seconds
    select radio button    Gender   M
    input text    name:FirstName    David
    input text    name:LastName  Warner
    input text    name:Email    davidwarnwer.gmail.com
    input text    name:Password     david
    input text    name:ConfirmPassword  david
    ${speed}=    get selenium speed
    log to console    ${speed}





