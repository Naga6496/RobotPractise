*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
All Links
    Open Browser    https://demo.guru99.com/test/newtours/    chrome
    Maximize Browser Window
    ${AllLinks}=    Get Element Count    xpath://a
    Log To Console    ${AllLinks} 
    
    @{getAllLinks}    Create List 
       
    FOR    ${i}    IN RANGE   1    ${AllLinks}
        ${linkText}=    Get Text    xpath:(//a)[${i}]
        Log To Console    ${linkText}    
    END   