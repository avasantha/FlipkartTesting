*** Setting ***            
Library    Selenium2Library
Library    Collections
Variables    ../Locators/Variables.yaml

*** Keyword ***
Apply Filters on Price and Brand
    Wait Until Element Is Visible    ${PriceFilterClass}    5    ${Error1}       
    Select From List By Value    ${PriceMaxFilter}    ${PriceMaxValue} 
    Sleep    5
    Capture Page Screenshot
    ${checkbox}    Get WebElement    ${BrandFilter}
    Select Checkbox    ${checkbox}
    ${Filter1Text}    Get Text    ${Filter1Xpath}
    Wait Until Element Is Visible    ${Filter2Xpath}       
    ${Filter2Text}    Get Text    ${Filter2Xpath}
    Capture Page Screenshot
    ${Filter1result}    Run Keyword And Return Status    Should Be Equal As Strings    ${Filter1Text}    ${Assertion2Data}
    ${Filter2result}    Run Keyword And Return Status    Should Be Equal As Strings    ${Filter2Text}    ${Assertion3Data}    
    Run Keyword If    ${Filter1result}==False    Fail    ${Assertion2}
    Run Keyword If    ${Filter2result}==False    Fail    ${Assertion3}
