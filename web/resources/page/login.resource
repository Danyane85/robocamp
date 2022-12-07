
***Settings***

Library    Browser


***Keywords***
Go To Login Page
    New Browser    headless=False            browser=firefox
    New Page       http://localhost:3000/
    
Fill Credentials
    [Arguments]         ${email}    ${password}

    Fill Text    css=input[placeholder="Seu e-mail"]    ${email}
    Fill Text    css=input[name=password]               ${password}

Submit Credentials    

    Click    css=button >> text=Entrar no sistema


Field Type Should Be Email

    Get Attribute   css=input[placeholder="Seu e-mail"]     Type    equal   email

Alert Text Should Be
    [Arguments]         ${field}     ${expected_text}

    Get Text        xpath=//input[@type="${field}"]/..//span

# opção 1
    #Wait For Elements State       css=span >> text=${expected_text}  
    #...                           visible        5    