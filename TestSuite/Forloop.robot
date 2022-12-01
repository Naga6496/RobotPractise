*** Settings ***
Library    SeleniumLibrary


*** Variables ***
@{Names}=    Aarif Afreed Liyana
@{Values}=    102 103 104    


*** Test Cases ***
#Forlooptc1
    #FOR  ${i}    IN    1    10   
    #Log To Console    ${i}       
    #END     
    
Forlooptc2
    FOR    ${i}    IN    @{Names}
        Log To Console    ${i}    
    END   
   
Forlooptc3
    FOR    ${i}    IN   @{Values}
        Log To Console    ${i}    
  
    END
