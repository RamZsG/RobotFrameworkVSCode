*** Settings ***
Resource    ../Resources/Resource1.robot

*** Test Cases ***
Login_Flow_Test
    I navigate to Orange CRM
    I enter username and password
    I click on log in button
    #I verify I am on home page
    I click on Welcome element
    I click on logout link

