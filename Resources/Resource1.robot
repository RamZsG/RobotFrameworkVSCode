*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/Locators.py

*** Keywords ***
Read Element Locator
    [Arguments]    ${JSonPath}
    ${Results}=    read_Locator_From_Json    ${JSonPath}
    [Return]    ${Results}