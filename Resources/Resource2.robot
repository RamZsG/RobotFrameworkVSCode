*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}=    http://www.tutorialsninja.com/demo/
${Browser}=    headlessfirefox


*** Keywords ***
I navigate to the store
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    ${LinkCount}=    Get Element Count    xpath=//li
    Log To Console    ${LinkCount}
    @{LinkList}=    Create List
    FOR    ${i}    IN RANGE    1    ${LinkCount}+1
        ${linktext}=    Get Text    xpath:(//li)[${i}]
        Log To Console    ${linktext}
    END