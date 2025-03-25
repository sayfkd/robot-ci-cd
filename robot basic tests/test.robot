*** Settings ***
Documentation    Exemple de test basique avec Robot Framework sans Selenium
Variables    variables.py
Library    fonctions.py


*** Variables ***
${MESSAGE}       Hello, Robot Framework!
${b}    3


*** Test Cases ***
Test De Vérification De Message
    [Documentation]    TEST 1
    #Log    Vérification du message attendu ${v}
    ${sum}    sum    ${a}    ${b}
    Log    Somme de 12 et 3 est: ${sum}
    ${sub}    subtract    ${a}    ${b}
    Log    difference de 12 et 3 est: ${sub}
    ${mul}    multiply    ${a}    ${b}
    Log    multiplication de 12 et 3 est: ${mul}
    #Should Be Equal    ${MESSAGE}    Hello, Robot Framework!




