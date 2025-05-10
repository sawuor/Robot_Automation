*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.selenium.dev/selenium/web/web-form.html

*** Test Cases ***
Given I open browser and navigate to selenium web
  Open Browser  ${URL}  Chrome
And I wait until the web fully launches
    Wait Until Page Contains Element    //input[@name="my-text"]    10s
When I input text Hello Robot
    Input Text    name=my-text  Hello Robot
When I input password
    Input Text  name=my-password    12345
When In the text area I input this is a sample test
    Input Text  name=my-textarea    This is a sample test
And I select option one from the dropdown
    Select From List By Label   name=my-select  One
And I click on button submit
    Click Button    css=button
Then form should be submitted successfully
    Wait Until Page Contains    Form submitted  5s
    Close Browser