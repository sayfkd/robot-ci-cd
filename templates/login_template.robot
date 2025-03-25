*** Settings ***
Test Template    login correct
Test Setup    Open Browser    https://www.saucedemo.com/    chrome    remote_url=http://192.168.1.55:4444/wd/hub
Library    SeleniumLibrary
Variables    ../pages/loginLocators.py
# Library     DataDriver                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Driver  ../data/login.csv     dialect=excel    encoding=utf-8


*** Test Cases ***    username    password
login correct   standard_user    secret_sauce

# *** Test Cases ***
# login correct   ${usernamecsv}    ${passwordcsv}

*** Keywords ***
Login correct
    [Arguments]    ${user}    ${pass}
    Input Text    ${USERNAME}    ${user}
    Input Text    ${PASSWORD}    ${pass}
    Click Element    ${LOGIN_BTN}
    Wait Until Element Is Visible    xpath=//span[contains(text(), "Products")]





