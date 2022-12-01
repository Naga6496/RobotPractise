*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TabbedWindows
    open browser    http://demo.automationtesting.in/Windows.html   chrome
    click element    xpath://button[@class='btn btn-info']
