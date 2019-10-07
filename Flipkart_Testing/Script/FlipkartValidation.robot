*** Setting ***
Documentation    Tests to validate Flipkart webpage
...              Shoe Search: The products on the search page are verified as shoes
...              Apply Filters: The Price filter and Brand filter selected are ensured as Min-₹2000 and ADIDAS respectively.
...              Product Detail Page: First product on the search page along with a valid size is selected to buy. 
...              Selected product is also verified for valid size and In Stock.              
...              UTF-8 encoding type is used for this source file.
                 
Metadata   Version    1.0    
           
Library    Selenium2Library
Library    Collections
Resource    ../Keywords/ApplyFilter.robot
Resource    ../Keywords/ProductDetailPage.robot
Resource    ../Keywords/SearchValidation.robot
Variables   ../Locators/Variables.yaml

*** Test Cases ***
Flipkart Webpage Search Validation
    Search Validation

Flipkart Webpage Filter Validation
    Apply Filters on Price and Brand
    
Flipkart Webpage Product Selection Validation
    Product Selection          

