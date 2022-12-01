*** Settings ***
Library  SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
LoginTest

    open browser    ${url}   ${browser}
    loginToApplication
    close browser


*** Keywords ***
loginToApplication
    click link    xpath://a[@class='ico-login']
    input text    id:Email  hard.aarif14@gmail.com
    input text    id:Password       Aarif@2222
    click element    xpath://button[@class='button-1 login-button']

