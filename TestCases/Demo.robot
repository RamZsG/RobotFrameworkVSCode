*** Settings ***
Library    SeleniumLibrary
Library    Screenshot

*** Variables ***
${URL}=    https://www.google.ca
${Browser}=    gc

*** Test Cases ***
TC01_LoadPage
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Capture Page Screenshot
    Sleep    6s