***Settings***
Documentation    Gerenciando a massa de testes via banco de dados.

Library    DatabaseLibrary

***Keywords***
Connect To Postgres
    Connect To Database    psycopg2	
    ...                    lsrfyfce
    ...                    lsrfyfce
    ...                    n-AR3BdAk76nEtHl2YvDpTYqpFydbEID
    ...                    babar.db.elephantsql.com
    ...                    5432

Select Student where email
    [Arguments]    ${email}
    ${query}       Set Variable
    ...            SELECT * FROM public.students where email='${email}';

    ${result}    query    ${query}

    [Return]      ${result}[0]

Delete Enroll By Email
    [Arguments]     ${email}

    ${user}       Select Student where email    falcao@gmail.com

    ${query}    Set Variable
    ...         DELETE FROM public.enrollments where student_id ='${user}[0]';    

    Execute SQL String    ${query}


Delete Student By Email

    [Arguments]     ${email}

    ${query}    Set Variable
    ...         DELETE FROM public.students where email ='${email}';    

    Execute SQL String    ${query}



# Helpers

Reset Student
    [Arguments]         ${email}
    Connect To Postgres
    Delete student By Email      ${email}
    Disconnect from Database