*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
Reg Test

    open browser    ${url}  ${browser}
    maximize browser window

    ${implicitwait}=    get selenium implicit wait
    log to console    ${implicitwait}

    set selenium implicit wait    10 seconds

    ${implicitwait}=    get selenium implicit wait
    log to console    ${implicitwait}

    select radio button    Gender   M
    input text    name:FirstName1    David
    input text    name:LastName  Warner
    input text    name:Email    davidwarnwer.gmail.com
    input text    name:Password     david
    input text    name:ConfirmPassword  david





