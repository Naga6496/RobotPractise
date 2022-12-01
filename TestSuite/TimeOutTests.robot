*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
Reg Test

    open browser    ${url}  ${browser}
    maximize browser window
    ${time}=    get selenium timeout
    log to console    ${time}
    set selenium timeout    10 seconds
    wait until page contains    Registration    #5seconds
    select radio button    Gender   M
    input text    name:FirstName    David
    input text    name:LastName  Warner
    input text    name:Email    davidwarnwer.gmail.com
    input text    name:Password     david
    input text    name:ConfirmPassword  david
    ${speed}=    get selenium speed
    log to console    ${speed}





