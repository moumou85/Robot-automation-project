*** Settings ***

Documentation    Fichier Contenant les mots cles de l'ensemble du projet alfresco
Library    SeleniumLibrary
Library    XML
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
    # Wait Until Element Is Visible    ${Connexion.link_Acceuil}
    # Click Element    ${Connexion.link_Acceuil}
    Wait Until Element Is Visible    ${Connexion.link_user}
    Click Element    ${Connexion.link_user}
    Wait Until Element Is Visible    ${Connexion.link_deconnexion}
    Click Element    ${Connexion.link_deconnexion}
    Close Browser
    
Creer un fichier Html
    [Arguments]    ${vnomFichier}    ${vcontenu}    ${vtitre}    ${vdescription}
    Click Element    ${CreerFichierHtml.link_mesfichiers}
    Wait Until Element Is Visible    ${CreerFichierHtml.link_creer}
    Click Element    ${CreerFichierHtml.link_creer}
    Click Element    ${CreerFichierHtml.link_fichierHtml}
    Input Text    ${CreerFichierHtml.input_name}    ${vnomFichier}

    
    
    Input Text    ${CreerFichierHtml.input_titre}    ${vtitre}
    Input Text    ${CreerFichierHtml.textarea_description}    ${vdescription}

    Wait Until Element Is Visible    //div[@id="template_x002e_create-content_x002e_create-content_x0023_default-form-fields"]//iframe[@id='template_x002e_create-content_x002e_create-content_x0023_default_prop_cm_content_ifr']
    Select Frame    //div[@id="template_x002e_create-content_x002e_create-content_x0023_default-form-fields"]//iframe[@id='template_x002e_create-content_x002e_create-content_x0023_default_prop_cm_content_ifr']
    Input Text    //body[@id="tinymce"]/p     ${vcontenu}
    Unselect Frame

    Click Element    ${CreerFichierHtml.btn_creer}


Supprimer Un Dossier

    [Arguments]    ${nomDossier}    
    Click Element    ${SupprimerDossier.link_mesfichiers}
    # Sleep    1s
    Mouse Over    ${SupprimerDossier.divNomDossier1}${nomDossier}${SupprimerDossier.divNomDossier2}
    # Sleep    1s
    Click Element    ${SupprimerDossier.linkPlus1}${nomDossier}${SupprimerDossier.linkPlus2}
    # Sleep    1s
    Click Element    ${SupprimerDossier.link_supprimer1}${nomDossier}${SupprimerDossier.link_supprimer2}
    # Sleep    1s
    Click Element    ${SupprimerDossier.btn_supprimer}
    


Supprimer Definitivement Un Site
    [Arguments]    ${nomSite}
    Go To    url=${vURL}/share/page/site/${nomSite}/dashboard




*** Test Cases ***

CT1
    Login    ${vURL}    ${vLogin}    ${vPassword}
    Creer un fichier Html    MonFichier10    Contenu10    Titre10    Description10  
    # Supprimer un dossier    Dossier2  
    Logout
   

CT2
       
    Login    ${vURL}    ${vLogin}    ${vPassword}
    # Supprimer Definitivement Un Site    MohamedSite1
    # Creer un fichier Html    test23    test2345    Description23
    Supprimer Un Dossier    test22
    Logout


    
