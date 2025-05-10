*** Settings ***
Library    RequestsLibrary

#This is where I set my variables- This is a sample comment
*** Variables ***
${BASE_URL}    https://postman-rest-api-learner.glitch.me/
${INFO_ID}     1

*** Test Cases ***
Get Test Case
    Create Session    learner    ${BASE_URL}    verify=False
    ${response}=      GET On Session    learner    /info?${INFO_ID}
    Should Be Equal As Integers    ${response.status_code}    200
    Should Contain  ${response.text}  made

Post Test Case
    Create Session    learner    ${BASE_URL}    verify=False
    ${response}=      POST On Session    learner    /info
    Should Be Equal As Integers    ${response.status_code}    200
    Should Contain  ${response.text}  following

Update Test Case
    Create Session    learner    ${BASE_URL}    verify=False
    ${response}=      PUT On Session    learner    /info?${INFO_ID}
    Should Be Equal As Integers    ${response.status_code}    200
    Should Contain  ${response.text}  update

Delete Test Case
    Create Session    learner    ${BASE_URL}    verify=False
    ${response}=      DELETE On Session    learner    /info?${INFO_ID}
    Should Be Equal As Integers    ${response.status_code}    200
    Should Contain  ${response.text}  request