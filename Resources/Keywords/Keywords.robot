*** Settings ***

Documentation    Fichier Contenant les mots cles de l'ensemble du projet alfresco
Library    SeleniumLibrary
Variables    ../Locators/Locators.py

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
    Sleep    2s
    Element Should Contain    ${Connexion.link_user}    ${vMessageConnexion}

Logout
    Sleep    1s
    Click Element    ${Connexion.link_Acceuil}
    Click Element    ${Connexion.link_user}
    Sleep    1s
    Click Element    ${Connexion.link_deconnexion}
    Close Browser
    
Creer un fichier Html
    [Arguments]    ${vnomFichier}    ${vtitre}    ${vdescription}
    Click Element    ${CreerFichierHtml.link_mesfichiers}
    Click Element    ${CreerFichierHtml.link_creer}
    Click Element    ${CreerFichierHtml.link_fichierHtml}
    Input Text    ${CreerFichierHtml.input_name}    ${vnomFichier}
    # Input Text    ${CreerFichierHtml.input_contenufichier}    ${vcontenu}
    Input Text    ${CreerFichierHtml.input_titre}    ${vtitre}
    Input Text    ${CreerFichierHtml.textarea_description}    ${vdescription}
    Click Element    ${CreerFichierHtml.btn_creer}
    


Supprimer un dossier
    [Arguments]    ${nomDossier}    
    Click Element    ${SupprimerDossier.link_mesfichiers}
    # Checkbox Should Be Selected    
    Sleep    2s
    # click Element    ${SupprimerDossier.checkBox1_dossier}${nomDossier}${SupprimerDossier.checkBox2_dossier}
    # Mouse Over    //tr[@id='yui-rec403']
    # Sleep    2s
    Click Element    //a[contains(.,'Dossier2')]/../../../../../td//div//div//div//a[contains(.,'Plus...')]
    Click Element    ${SupprimerDossier.btn_articleSelectionnes}
    Click Element    ${SupprimerDossier.link_supprimer}
    Click Element    ${SupprimerDossier.btn_supprimer}

*** Test Cases ***

Se connecter
    Login    ${vURL}    ${vLogin}    ${vPassword}
    # Creer un fichier Html    MonFichier4    Titre4    Description4  
    Supprimer un dossier    Dossier2  
    Logout
   


    
