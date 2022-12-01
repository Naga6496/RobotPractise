*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ScreenShots
    Open Browser    https://www.facebook.com/    chrome
    Maximize Browser Window
    
    Input Text    id:email    aarif14@gamil.com
    Input Text    id:pass    asassa123        
    
    Capture Element Screenshot    //img[@class='fb_logo _8ilh img']    C:/Users/EICPL02-L225/eclipse-workspace/RobotPractise/LOGDIR/Screenshots/Logo.png    
    Capture Page Screenshot    C:/Users/EICPL02-L225/eclipse-workspace/RobotPractise/LOGDIR/Screenshots/Screen.png
    
    Capture Element Screenshot    //img[@class='fb_logo _8ilh img']    Logo.png
    Capture Page Screenshot    Screenshot.png
    
    