***Settings***
Documentation    Consumindo a rota students da Api REST

Library    RequestsLibrary

***Keywords***

Post New Student
    [Arguments]     ${token}        ${student}

    ${headers}      Create Dictionary       Authorization=${token}  

    ${response}    POST                   http://localhost:3333/students
    ...            json=${student}
    ...            headers=${headers} 
    ...            expected_status=201


    
