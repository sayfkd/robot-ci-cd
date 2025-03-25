*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/login.resource
Variables    ../pages/loginLocators.py


*** Variables ***
${VALID_USERNAME}    standard_user
${VALID_PASSWORD}    secret_sauce
${INVALID_USERNAME}  fake_user
${INVALID_PASSWORD}  fake_sauce


*** Test Cases ***
Login With Valid Credentials
    [Documentation]    Vérifie que l'utilisateur peut se connecter avec des identifiants valides
    Open Browser    ${URL}
    #Wait Until Element Is Visible    ${USERNAME}    timeout=5s
    Input Username    ${VALID_USERNAME}
    Input MyPassword    ${VALID_PASSWORD}
    Click Login Button
    Close MyBrowser

Login With Invalid Password
    [Documentation]    Vérifie qu'un utilisateur avec un mot de passe incorrect ne peut pas se connecter
    Open Browser    ${URL}
    Input Username    ${VALID_USERNAME}
    Input MyPassword    ${INVALID_PASSWORD}
    Click Login Button
    Wait Until Element Is Visible    ${ErrorText}    timeout=5s
    Close MyBrowser

Login With Invalid Username
    [Documentation]    Vérifie qu'un utilisateur avec un username incorrect ne peut pas se connecter
    Open Browser    ${URL}
    Input Username    ${INVALID_USERNAME}
    Input MyPassword    ${VALID_PASSWORD}
    Click Login Button
    Wait Until Element Is Visible    ${ErrorText}    timeout=5s
    Close MyBrowser


Login With Invalid Credentials
    [Documentation]    Vérifie qu'un utilisateur avec des credentials incorrect ne peut pas se connecter
    Open Browser    ${URL}
    Input Username    ${INVALID_USERNAME}
    Input MyPassword    ${INVALID_PASSWORD}
    Click Login Button
    Wait Until Element Is Visible    ${ErrorText}    timeout=5s
    Close MyBrowser








# *** Test Cases ***
# Login with valid credentials
#     [Documentation]    login avec valid cred
#     Open Browser    https://www.saucedemo.com/    Chrome
#     Input Text    id:user-name    standard_user
#     Input Password    id:password    secret_sauce
#     Click Button    id:login-button
#     ${text}    Get Text    css:title
#     # Should Be Equal As Strings    ${text}    Products
#     Log To Console    ${text}
#     [Teardown]    Close All Browsers