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
    Wait Until Element Is Visible    ${Connexion.link_user}
    Element Should Contain    ${Connexion.link_user}    ${vMessageConnexion}

Logout
    Wait Until Element Is Visible    ${Connexion.link_Acceuil}
    Click Element    ${Connexion.link_Acceuil}
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
    Sleep    2s
    Execute Javascript    tinyMCE.activeEditor.setContent('${vcontenu}')
    # Wait Until Element Is Visible    //iframe[@id='template_x002e_create-content_x002e_create-content_x0023_default_prop_cm_content_ifr']
    # Select Frame    //iframe[@id='template_x002e_create-content_x002e_create-content_x0023_default_prop_cm_content_ifr']
    # Input Text    //body[@id="tinymce"]/p     ${vcontenu}
    # Unselect Frame
    Input Text    ${CreerFichierHtml.input_titre}    ${vtitre}
    Input Text    ${CreerFichierHtml.textarea_description}    ${vdescription}

    Click Element    ${CreerFichierHtml.btn_creer}


Supprimer Un Dossier

    [Arguments]    ${nomDossier}    
    Click Element    ${SupprimerDossier.link_mesfichiers}
    Mouse Over    ${SupprimerDossier.divNomDossier1}${nomDossier}${SupprimerDossier.divNomDossier2}
    Click Element    ${SupprimerDossier.linkPlus1}${nomDossier}${SupprimerDossier.linkPlus2}
    Click Element    ${SupprimerDossier.link_supprimer1}${nomDossier}${SupprimerDossier.link_supprimer2}
    Click Element    ${SupprimerDossier.btn_supprimer}
    


Supprimer Definitivement Un Site
    [Arguments]    ${nomSite}
    Go To    url=${vURL}/share/page/site/${nomSite}/dashboard
    Wait Until Element Is Visible    ${SupprimerSite.img_configuration}
    Click Element    ${SupprimerSite.img_configuration}
    Click Element    ${SupprimerSite.link_supprimerSite}
    Click Element    ${SupprimerSite.btn_okSupprimer}
    Click Element    ${Connexion.link_user}
    Click Element    ${SupprimerSite.link_monProfile}
    Wait Until Element Is Visible    ${SupprimerSite.link_corbeille}
    Click Element    ${SupprimerSite.link_corbeille}
    Wait Until Element Is Visible    ${SupprimerSite.btn_supprimerCorbeille1}${nomSite}${SupprimerSite.btn_supprimerCorbeille2}
    Click Element    ${SupprimerSite.btn_supprimerCorbeille1}${nomSite}${SupprimerSite.btn_supprimerCorbeille2}
    Click Element    ${SupprimerSite.btn_okConfirmation}


Creer Un Evenement Dans Un Site
    [Arguments]    ${nomSite}    ${nomEvenement}    ${emplacement}    ${description}    ${journneeEntiere}    ${dateDebut}    ${dateFin}    ${heureDebut}    ${heureFin}    ${tag}    ${jourDebut}    ${moisDebut}    ${anneeDebut}    ${jourFin}    ${moisFin}    ${anneeFin}
    Go To    url=${vURL}/share/page/site/${nomSite}/dashboard
    Wait Until Element Is Visible    ${CreerEvenement.link_calendrier}
    Click Element    ${CreerEvenement.link_calendrier}
    Wait Until Element Is Visible    ${CreerEvenement.btn_ajouterEvenement}
    Click Element    ${CreerEvenement.btn_ajouterEvenement}
    
    
    Input Text    ${CreerEvenement.input_nomEvenement}    ${nomEvenement}
    Input Text    ${CreerEvenement.input_emplacement}    ${emplacement}
    Input Text    ${CreerEvenement.textarea_description}    ${description}
    Checkbox Should Not Be Selected    ${CreerEvenement.input_checkbox}
    Click Element    ${CreerEvenement.input_dateDebut}
    
    Click Element    ${CreerEvenement.a_jourDumoisDebut1}${jourDebut}${CreerEvenement.a_jourDumoisDebut2}

    

    Input Text    ${CreerEvenement.input_dateDebut}    ${dateDebut}
    Input Text    ${CreerEvenement.input_dateFin}    ${dateFin}
    Input Text    ${CreerEvenement.input_heureDebut}    ${heureDebut}
    Input Text    ${CreerEvenement.input_heureFin}    ${heureFin}
    Click Element    ${CreerEvenement.btn_creer}
    Wait Until Element Is Visible    ${CreerEvenement.link_evenementCree}
    Element Should Contain    ${CreerEvenement.link_evenementCree}    ${nomEvenement}


# Replace Value In XPATH
#     [Arguments]        ${xpath}          ${name}=\
#     [Documentation]    Remplace '__1__' par ``name`` dans ``xpath``
#     ${loc}=            Replace String    ${xpath}                   __1__                      ${name}
#     [Return]           ${loc}


Creer Une Liste De Donnees
    
    [Arguments]    ${nomSite}    ${typeListe}    ${titleListe}    ${descriptionListe}
    # ${typeListe} =   list${typeListe}("Agenda d'événement","Carnet d'adresses","Liste d'événements","Liste de contacts","Liste de publications","Une liste de tâches avec personne assignée facultative.","Liste de tâches (avancées)","Liste de tâches (simples)","Ordre du jour")
    
    
    Go To    url=${vURL}/share/page/site/${nomSite}/dashboard 
    Wait Until Element Is Visible    ${CreerListeDonnees.link_plus}
    Click Element    ${CreerListeDonnees.link_plus}

    Wait Until Element Is Visible    ${CreerListeDonnees.link_listeDonnees}
    Click Element    ${CreerListeDonnees.link_listeDonnees}

    Wait Until Element Is Visible    ${CreerListeDonnees.div_typeListe1}${typeListe}${CreerListeDonnees.div_typeListe2}
    Click Element    ${CreerListeDonnees.div_typeListe1}${typeListe}${CreerListeDonnees.div_typeListe2}

    Wait Until Element Is Visible    ${CreerListeDonnees.input_title}
    Input Text    ${CreerListeDonnees.input_title}    ${titleListe}

    Wait Until Element Is Visible    ${CreerListeDonnees.textarea_description}
    Input Text    ${CreerListeDonnees.textarea_description}    ${descriptionListe}

    Click Element    ${CreerListeDonnees.btn_enregistrer}
    Wait Until Element Is Visible    ${CreerListeDonnees.div_succeedmessage1}${titleListe}${CreerListeDonnees.div_succeedmessage2}
    Element Should Contain    ${CreerListeDonnees.div_succeedmessage1}${titleListe}${CreerListeDonnees.div_succeedmessage2}    ${titleListe}

Supprimer Site
    # SITE_NAME contient le nom du site à supprimer
    # vURL_MySite1 premiére partie de l'url qui redirige vers le site
    # vURL_MySite2 deuxiéme partie de l'url qui redirige vers le site
    [Arguments]    ${vSITE_NAME}    
    Go To    ${vURL}/share/page/site/${vSITE_NAME}/dashboard 
    Sleep    2s   
    Click Element    ${SupprimerSite.btn_Roue_Dentee}
    Click Element    ${SupprimerSite.link_delete}
    Wait Until Element Is Visible    ${SupprimerSite.lbl_delete}    timeout=5s
    Click Element    ${SupprimerSite.btn_Ok}
    Sleep    2s


Supprimer Groupe
    [Arguments]    ${vIdGroupe}    
    Click Element    ${SupprimerGroupe.link_outilsAdmin}
    Click Element    ${SupprimerGroupe.link_groupes}
    Input Text    ${SupprimerGroupe.input_nomGroupe}    ${vIdGroupe} 
    Click Element    ${SupprimerGroupe.btn_rechercher}
    Wait Until Element Is Visible    ${SupprimerGroupe.link_supprimer1}${vIdGroupe}${SupprimerGroupe.link_supprimer2}
    Click Element    ${SupprimerGroupe.link_supprimer1}${vIdGroupe}${SupprimerGroupe.link_supprimer2}
    Wait Until Element Is Visible    ${SupprimerGroupe.btn_supprimer}
    Click Element    ${SupprimerGroupe.btn_supprimer}
    

Modifier Page Wiki
    [Arguments]    ${vnomSite}    ${vtexte}    ${vTag}
    Go To    url=${vURL}/share/page/site/${vnomSite}/wiki-page?title=Main_Page
    Click Element    ${ModifierPageWiki.link_modifierPage}
    Execute Javascript    tinyMCE.activeEditor.setContent('${vtexte}')
    Input Text    ${ModifierPageWiki.input_tag}    ${vTag}
    Click Element    ${ModifierPageWiki.btn_enregistrer}


Supprimer Un Commentaire Du Module Blog
    [Arguments]    ${vnomSite}    ${vcommentaire}    ${vtitreBlog}
    Go To    url=${vURL}/share/page/site/${vnomSite}/blog-postlist
    Wait Until Element Is Visible    ${SupprimerCommentaire.link_titreBlog1}${vtitreBlog}${SupprimerCommentaire.link_titreBlog2}
    Click Element    ${SupprimerCommentaire.link_titreBlog1}${vtitreBlog}${SupprimerCommentaire.link_titreBlog2}
    Mouse Over    ${SupprimerCommentaire.text_commentaire}
    Wait Until Element Is Visible    ${SupprimerCommentaire.link_supprimerCommentaire1}${vcommentaire}${SupprimerCommentaire.link_supprimerCommentaire2}
    Click Element    ${SupprimerCommentaire.link_supprimerCommentaire1}${vcommentaire}${SupprimerCommentaire.link_supprimerCommentaire2}
    Click Element    ${SupprimerCommentaire.btn_supprimer}

        
