*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
openWebsite
    [Arguments]         ${url}      ${browser}      ${elem}     ${title}
    Open Browser                        ${url}              ${browser}
    Maximize Browser Window
    Title Should Be                     ${title}
    Wait Until Element Is Visible       ${elem}

inputValue
    [Arguments]         ${element}      ${input}
    Wait Until Element Is Visible       ${element}
    Input Text                          ${element}       ${input}

keyboardPressEnter
    [Arguments]         ${element}      
    Press Keys                          ${element}      RETURN

elementClick
    [Arguments]                         ${element}
    Wait Until Element Is Visible       ${element}
    Click Element                       ${element}

ensureElementExist
    [Arguments]                         ${element}
    Wait Until Element Is Visible       ${element}