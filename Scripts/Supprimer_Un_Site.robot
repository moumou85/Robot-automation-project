*** Settings ***

Documentation    Fichier Contenant les mots cles de l'ensemble du projet alfresco
Library    SeleniumLibrary
Library    XML
Variables    ../Resources/Locators/Locators.py
Resource    ../Resources/Keywords/Keywords.robot

*** Variables ***

${vURL}    http://34.71.49.164
${vLogin}    2106860
${vPassword}    2106860
${vBrowser}    chrome
${vMessageConnexion}    Idbourkha Mohamed


*** Keywords ***

Login 
    [Arguments]    ${vURL}    ${vLogin}    ${vPassword}
    Open Browser    ${vURL}    ${vBrowser}
    Maximize Browser Window
    Input Text    ${Connexion.input_username}    ${vLogin}
    Input Text    ${Connexion.input_password}    ${vPassword}
    Click Element    ${Connexion.btn_connexion}
    Wait Until Element Is Visible    ${Connexion.link_user}
    Element Should Contain    ${Connexion.link_user}    ${vMessageConnexion}



*** Test Cases ***

CT1    
    Login    ${vURL}    ${vLogin}    ${vPassword}
    Supprimer Site    test2
    Logout
