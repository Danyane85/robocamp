***Settings***
Documentation    Suite de testes de matrículas de alunos
...              Administrador uma vez logado consegue matricular alunos na academia


Resource    ../resources/base.resource


***Test Cases***

Testando Api
    
    
    ${admin}      Get fixtures    admin
    ${falcao}     Get fixtures    falcao

    Reset Student  falcao@yahoo.com
    
    ${token}           Get Service Token        ${admin}
    Post New Student   ${token}  ${falcao}[student]


Deve matricular um aluno
   [Tags]           Api


#Falcão
#Smart
#18/11/2022

    ${admin}      Get fixtures    admin
    ${falcao}     Get fixtures    falcao

    Reset Student        ${falcao}[student][email]

    ${token}           Get Service Token        ${admin}
    Post New Student   ${token}  ${falcao}[student]

    Do Login    ${admin}

    Go To Enrolls
    Go to Enroll Fron
    Select Student        ${falcao}[student][name] 
    Select Plan           ${falcao}[enroll][plan]
    Fill Start Date       
    Submit Enroll Form    
    Verify Toaster        Matrícula cadastrada com sucesso

    #sleep    30
