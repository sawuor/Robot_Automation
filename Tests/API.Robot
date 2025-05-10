*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com
${POST_ID}     1

*** Test Cases ***
Get Post By ID Should Return 200
    Create Session    jsonplaceholder    ${BASE_URL}    verify=False
    ${response}=      GET On Session    jsonplaceholder    /posts/${POST_ID}
    Should Be Equal As Integers    ${response.status_code}    200