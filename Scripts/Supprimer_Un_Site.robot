*** Settings ***

Documentation    Fichier Contenant les mots cles de l'ensemble du projet alfresco
Library    SeleniumLibrary
Library    XML
Variables    ../Resources/Locators/Locators.py
Variables    ../Resources/Keywords/Keywords.robot
Resource    ../Resources/Keywords/Keywords.robot


*** Variables ***

${vURL}    http://34.71.49.164
${vLogin}    2106860
${vPassword}    2106860
${vBrowser}    chrome
${vMessageConnexion}    Idbourkha Mohamed




*** Test Cases ***

Supprimer Un Site

    Login    ${vURL}    ${vLogin}    ${vPassword}
    Supprimer Site    test2
    Logout
