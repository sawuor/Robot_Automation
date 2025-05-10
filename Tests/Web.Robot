*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://google.com

*** Test Cases ***
Open google
    Open Browser    ${URL}  chrome
    Sleep  5s
    Close Browser
