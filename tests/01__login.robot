*** Settings ***
Resource            ${CURDIR}\\..\\keywords\\login.robot
Documentation       This test suite was created to teste the functionality of the login page
Test Setup          Open the browser and go to ${swagLabs_url}
Test Teardown       Close Browser

*** Test Cases ***
Successfully login in on the page
    Given the user is on the login page
    When the user fill the login field with standard_user
    And the user fill the password with secret_sauce
    And the user clicks on login button
    Then the user will see the products page

Failure to login on the page
    Given the user is on the login page
    When the user fill the login field with wrong_user
    And the user fill the password with wrong_pass
    And the user clicks on login button
    Then the user will not see the products page