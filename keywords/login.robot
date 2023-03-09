*** Settings ***
Resource            ${CURDIR}\\..\\utils\\keywords\\utils.robot

*** Keywords ***
the user is on the login page
    Wait Until Page Contains Element        xpath://div[contains(text(), 'Swag Labs')]
    Wait Until Page Contains Element        xpath://*[@class='login_wrapper-inner']

the user fill the login field with ${username}
    Page Should Contain Element             ${usernameID}
    Input Text                              ${usernameID}      ${username}
    Page Should Contain Element             xpath://input[@value='${username}']

the user fill the password with ${password}
    Page Should Contain Element             ${passwordID}   
    Input Text                              ${passwordID}       ${password}
    Page Should Contain Element             xpath://input[@value='${password}']

the user clicks on login button
    Page Should Contain Element              ${login_btnID}
    Click Button                             ${login_btnID}

the user will see the products page
    Page Should Contain Element              ${productMenuID}
    Page Should Contain Element              xpath://span[contains(text(), 'Products')]

the user will not see the products page
    Page Should Contain Element              xpath://*[contains(text(), ' Username and password do not match')]
    Page Should Not Contain Element          ${productMenuID}
    Page Should Not Contain Element          xpath://span[contains(text(), 'Products')]

