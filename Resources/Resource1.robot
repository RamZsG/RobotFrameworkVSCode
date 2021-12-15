*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/Locators.py

*** Variables ***
${URL}=    https://opensource-demo.orangehrmlive.com/
${Browser}=    gc
${Username}=    Read Element Locator    Login.username_TextInput_id
${Password}=    Read Element Locator    Login.password_TextInput_id
${Login_btn}=    Read Element Locator    Login.login_btn_id
${Welcome}=    Read Element Locator    Home.welcome_Element_id
${Logout}=    Read Element Locator    Home.logout_Element_LinkText

*** Keywords ***
Read Element Locator
    [Arguments]    ${JSonPath}
    ${Results}=    read_Locator_From_Json    ${JSonPath}
    [Return]    ${Results}
I navigate to Orange CRM
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
I enter username and password
    Input Text    id=${Username}    Admin
    Input Password    id=${Password}    admin123
I click on log in button
    Click Button    id=${Login_btn}
I click on Welcome element
    Click Element    id=${Welcome}
    Sleep    3s
I click on logout link
    Click Link    link=${Logout}