*** Settings ***
Resource             ${CURDIR}\\..\\utils\\keywords\\utils.robot
Variables            ${CURDIR}\\..\\pageObjects\\productsPO.py

*** Keywords ***
the user is on the product page
    Page Should Contain Element              ${productMenuID}
    Page Should Contain Element              xpath://span[contains(text(), 'Products')]

the user select the product named ${product_name}
    Page Should Contain Element             xpath://div[@class = 'inventory_list']
    Page Should Contain Element             xpath://div[contains(text(), '${product_name}')]
    Click Element                           xpath://div[contains(text(), '${product_name}')]

the user checks if is the right ${product_name} is selected
    Element Should Be Visible               xpath://div[contains(text(), '${product_name}')]

the user add ${number} product to the cart
    Element Should Be Visible               ${addToCartID_btn}
    Click Button                            ${addToCartID_btn}
    Page Should Contain Element             //span[contains(text(), '${number}')]

the user go to the cart page
    Element Should Be Visible               ${cartID}
    Click Element                           ${cartID}
    Element Should Be Visible               ${cartPageLabelID}
    Page Should Contain Element             ${cartItemID}
    
the user will see the ${product_name} product on the cart
    Element Should Be Visible               xpath://div[@class = 'cart_item']//div[contains(text(), '${product_name}')]