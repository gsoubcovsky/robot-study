*** Settings ***
Resource        ${CURDIR}\\..\\pageObjects\\utilsPO.robot
Variables        ${EXECDIR}\\..\\pageObjects\\productsPO.py
Resource        ${EXECDIR}\\..\\keywords\\login.robot
Library         SeleniumLibrary

*** Keywords ***
Open the browser and go to ${url}
    Open Browser                            ${url}      chrome
    Wait Until Page Contains Element        //div[contains(text(), 'Swag Labs')]
    Wait Until Page Contains Element        xpath://*[@class='login_wrapper-inner']

Login on the page
    Given the user is on the login page
    When the user fill the login field with standard_user
    And the user fill the password with secret_sauce
    And the user clicks on login button
    Then the user will see the products page