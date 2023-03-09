*** Settings ***
Resource            ${CURDIR}\\..\\keywords\\products.robot
Documentation       This test suite was created to teste the functionality of the products page
Test Setup      Run Keywords        Open the browser and go to ${swagLabs_url}      AND
...             Login on the page
Test Teardown       Close Browser

*** Test Cases ***
Successfully add a product on the cart
    Given the user is on the product page
    When the user select the product named Sauce Labs Backpack
    And the user checks if is the right Sauce Labs Backpack is selected
    And the user add 1 product to the cart
    And the user go to the cart page
    Then the user will see the Sauce Labs Backpack product on the cart
