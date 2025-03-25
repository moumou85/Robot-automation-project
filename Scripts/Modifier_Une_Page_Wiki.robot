*** Settings ***

Documentation    Fichier Contenant les mots cles de l'ensemble du projet alfresco
Library    SeleniumLibrary
Library    XML
Variables    ../Resources/Locators/Locators.py
Resource    ../Resources/Keywords/Keywords.robot

*** Variables ***

${vURL}    http://35.224.163.244
${vLogin}    2106860
${vPassword}    2106860
${vBrowser}    chrome
${vMessageConnexion}    Idbourkha Mohamed

*** Test Cases ***

Sc Modifier une page wiki
    Login    ${vURL}    ${vLogin}    ${vPassword}
    Modifier Page Wiki    mohamed1    TexteModifie    Mohamed
    Logout