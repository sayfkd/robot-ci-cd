*** Settings ***
Library    SeleniumLibrary
Variables    ./loginLocators.py

# *** Variables ***
# ${USERNAME}    id:user-name
# ${PASSWORD}    id:password
# ${LOGIN_BTN}    id:login-button
# ${TITLE}    css:h3[data-test="error"]

*** Keywords ***

Input Username
    [Arguments]    ${user}
    Input Text    ${USERNAME}    ${user}

Input MyPassword
    [Arguments]    ${pass}
    Input Text    ${PASSWORD}    ${pass}
    

Click Login Button
    Click Button    ${LOGIN_BTN}

Close MyBrowser
    Close All Browsers

Get Error Message Element
    [Documentation]    Retourne l'élément du message d'erreur (sans assertion)
    [Return]    ${ERROR_MSG}