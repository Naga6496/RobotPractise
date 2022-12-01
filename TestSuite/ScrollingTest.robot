*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
ScrollingTest
    Open Browser    https://www.boldtuesday.com/pages/alphabetical-list-of-all-countries-and-capitals-shown-on-list-of-countries-poster    chrome
    Maximize Browser Window
    
    #Execute Javascript    window.scrollTo(0, 4500)
    Sleep    4
    
    #Scroll Element Into View    xpath://strong[text()='INDIA']
    #Sleep    3
    
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    4
    Execute Javascript    window.scrollTo(0, -document.body.scrollHeight)
    Sleep    3    
    
    
        

    