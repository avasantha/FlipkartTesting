*** Setting ***           
Library    Selenium2Library
Library    Collections
Variables    ../Locators/Variables.yaml

*** Keyword ***
Search Validation
    Open Browser    ${Browser}    chrome
    Click Button    ${LoginCancelButton}
    Input Text    ${SearchText}    ${InputData}
    Capture Page Screenshot
    Click Button    ${SearchButton}
    Wait Until Element Is Visible    ${ProductData}
    Capture Page Screenshot
    @{AllData}    Create List     
    ${All_Data}    Get WebElements    ${ProductData}  
    :FOR    ${item}    IN    @{AllData}
    \    ${GetSrc}    Get Element Attribute     ${item}    ${Src}          
    \    ${result}    Run Keyword And Return Status     Should Contain    ${GetSrc}    ${Data}   
    \    ${msg}    Catenate    ${GetSrc}  ${Assertion1}  
    \    Run Keyword If    ${result}==False    Fail    ${msg}  