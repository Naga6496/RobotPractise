*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MultipleBrowser
    Open Browser    https://www.google.com/    chrome
    Maximize Browser Window
    
    Sleep    3
    
    Open Browser    https://www.bing.com/    chrome
    Maximize Browser Window
    
    Switch Browser    1
    ${title1}=    Get Title
    Log To Console    ${title1}  
    
    Sleep    3    
    
    Switch Browser    2
    ${title2}=    Get Title
    Log To Console    ${title2} 
    
    Sleep    2    
    Close All Browsers
         
    
    
    