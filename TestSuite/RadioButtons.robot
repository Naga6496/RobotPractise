*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
Testing RadioButton and checkBoxes
    open browser
    maximize browser window
    set selenium speed    2seconds
    