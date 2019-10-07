*** Setting ***           
Library    Selenium2Library
Library    Collections
Variables    ../Locators/Variables.yaml

*** Keyword ***
Product Selection
    Wait Until Element Is Visible    ${Product}    
    ${Product_Selection}    Get WebElement    ${Product}
    Click Element    ${Product_Selection}
    Capture Page Screenshot
    Select Window    NEW
    Wait Until Element Is Visible    ${ProductSize}    5    ${Error2}
    Click Element    ${ProductSize}
    Capture Page Screenshot
    Wait Until Element Is Visible    ${BuyNow}    5    ${Error3}           
    ${Buy}    Get WebElement    ${BuyNow}
    Click Button    ${Buy}
    Capture Page Screenshot
    Wait Until Element Is Visible    ${Login}
    Capture Page Screenshot

