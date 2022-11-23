***Settings***
Documentation    Suite de testes de matrículas de alunos
...              Administrador uma vez logado consegue matricular alunos na academia


Resource    ../resources/base.resource

***Test Cases***
Deve matricular um aluno

#Falcão
#Smart
#18/11/2022

    ${admin}    Create Dictionary
    ...         name=Admin
    ...         email=admin@smartbit.com
    ...         pass=qacademy

    Do Login    ${admin}

    Go To Enrolls
    Go to Enroll Fron
    Select Student       Falcão
    Select Plan          Smart
    Fill Start Date      

    sleep    10
