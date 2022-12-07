***Settings***
Documentation           Tudo começa aqui!!!

Resource      components/navbar.resource
Resource      components/toast.resource
Resource      page/login.resource
Resource      page/enroll.resource
Resource      services/sessions.resource
Resource      services/students.resource

Resource      database.resource
Library       JSONLibrary


***Keywords***
#Helpers

Do Login
    [Arguments]         ${user}    

    Go To Login Page
    Fill Credentials            ${user}[email]    ${user}[password]
    Submit Credentials          
    User Should Be Looged In    ${user}[name]

Get fixtures
    [Arguments]     ${fixture_file}

    ${fixture}    Load JSON From File    ${EXECDIR}/resources/fixtures/${fixture_file}.json
    ...           encoding=UTF-8

    [Return]       ${fixture}