***Settings***
Documentation

Library    Browser
Library    libs/DateTricks.py

***Keywords***

 #Click   css=a >> text=MATRÍCULAS

# Melhor estratégia quando tem links


Go To Enrolls
    Click    css=a[href="/matriculas"]

Go to Enroll Fron

    Click    css=a[href="/matriculas/new"]

Select Student
    [Arguments]    ${student_name}

    Fill Text    xpath=//div[contains(text(), "nome do aluno")]/..//input
    ...          ${student_name} 

    Click    css=div[class$=option] >> text=Falcão

Select Plan
    [Arguments]    ${plan_name}

    Click    xpath=//label[text()="PLANO"]/..//div[contains(text(),"Selecione")]

    Click    css=div[class$=option] >> text=${plan_name}

Fill Start Date
 # tipo date
    Focus            css=input[name=start_date]    
    ${start_date}    Get Start Date                

    FOR             ${number}    IN           @{start_date}
    Keyboard Key    press        ${number}    

    END






    #Log    ${start_date}

    #Keyboard key    press   2
    #Keyboard key    press   3
    #Keyboard key    press   1
    #Keyboard key    press   1
    #Keyboard key    press   2
    #Keyboard key    press   0
    #Keyboard key    press   2
    #Keyboard key    press   2
