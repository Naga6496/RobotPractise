*** Settings ***
Library    SeleniumLibrary
Suite Setup    Set Screenshot Directory    LOGDIR/ScreenShots




*** Test Cases ***
TabbedWindows
    open browser    http://demo.automationtesting.in/Windows.html   chrome
    click element    xpath://button[@class='btn btn-info']
    Select Checkbox    selenium.dev
    Click Element    xpath://span[text()='Support']
    Sleep    3seconds  
    
