class Connexion:
    input_username = "//input[@id='page_x002e_components_x002e_slingshot-login_x0023_default-username']"
    input_password = "//input[@id='page_x002e_components_x002e_slingshot-login_x0023_default-password']"
    btn_connexion = "//button[@id='page_x002e_components_x002e_slingshot-login_x0023_default-submit-button']"
    span_user = "//span[@id='HEADER_USER_MENU_POPUP_text']"
    link_user = "//span[@id='HEADER_USER_MENU_POPUP_text']"
    link_deconnexion = "//td[@id='HEADER_USER_MENU_LOGOUT_text']"
    link_Acceuil = "//span[@id='HEADER_HOME_text']"

class CreerFichierHtml:
    link_mesfichiers = "//span[@id='HEADER_MY_FILES_text']"
    link_creer = "//button[@id='template_x002e_documentlist_v2_x002e_myfiles_x0023_default-createContent-button-button']"
    link_fichierHtml = "//span[text()='HTML...']"
    input_name = "//input[@id='template_x002e_create-content_x002e_create-content_x0023_default_prop_cm_name']"
    input_titre = "//input[@id='template_x002e_create-content_x002e_create-content_x0023_default_prop_cm_title']"
    iframe_contenu = "//body[contains(@data-id, 'template_x002e_create-content_x002e_create-content')]/p"
    textarea_description = "//textarea[@id='template_x002e_create-content_x002e_create-content_x0023_default_prop_cm_description']"
    btn_creer = "//button[@id='template_x002e_create-content_x002e_create-content_x0023_default-form-submit-button']"



class SupprimerDossier:
    link_mesfichiers = "//span[@id='HEADER_MY_FILES_text']"
    divNomDossier1 = "//div[@class='yui-dt-liner']//a[text()='"
    divNomDossier2 = "']"
    linkPlus1 = "//a[text()='"
    linkPlus2 = "']/ancestor::tr//a/span[text()='Plus...']"
    link_supprimer1 = "//a[text()='"
    link_supprimer2 = "']/ancestor::tr//span[text()='Supprimer le Dossier']"
    btn_supprimer = "//button[contains(.,'Supprimer')]"


class SupprimerSite:
    img_configuration = "//div[@id='HEADER_SITE_CONFIGURATION_DROPDOWN']"
    link_supprimerSite = "//td[@id='HEADER_DELETE_SITE_text']"
    btn_okSupprimer = "//span[@id='ALF_SITE_SERVICE_DIALOG_CONFIRMATION_label']"
    link_monProfile = "//td[@id='HEADER_USER_MENU_PROFILE_text']"
    link_corbeille = "//a[text()='Corbeille']"
    btn_supprimerCorbeille1 = "//div[text()='"
    btn_supprimerCorbeille2 = "']/ancestor::tr//button[text()='Supprimer']"
    btn_okConfirmation = "//button[text()='OK']"

class CreerEvenement:
    link_calendrier = "//span[@id='HEADER_SITE_CALENDAR_text']"
    btn_ajouterEvenement = "//button[@id='template_x002e_toolbar_x002e_calendar_x0023_default-addEvent-button-button']"
    input_nomEvenement = "//input[@id='eventEditPanel-title']"
    input_emplacement = "//input[@id='eventEditPanel-location']"
    textarea_description = "//textarea[@id='eventEditPanel-description']"
    input_checkbox = "//input[@id='eventEditPanel-allday']"
    input_dateDevut = "//input[@id='fd']"
    a_jourDumoisDebut1 = "//a[text()='"
    a_jourDumoisDebut2 = "']"
    input_dateFin = "//input[@id='td']"
    input_heureDebut = "//input[@id='eventEditPanel-start']"
    input_heureFin = "//input[@id='eventEditPanel-end']"
    input_tag  = "//input[@id='eventEditPanel-tag-input-field']"
    btn_enregistrer = "//button[@id='eventEditPanel-ok-button']"

class CreerListeDonnees:
    link_plus = "//span[@id='HEADER_SITE_MORE_PAGES_text']"
    link_listeDonnees = "//span[@id='HEADER_SITE_DATA-LISTS_text']/a[text()='Listes de données']"
    div_typeListe1 = "//a[contains(text(), "
    div_typeListe2 = ")]"
    input_title = "//input[@id='template_x002e_datalists_x002e_data-lists_x0023_default-newList_prop_cm_title']"
    textarea_description = "//textarea[@id='template_x002e_datalists_x002e_data-lists_x0023_default-newList_prop_cm_description']"
    btn_enregistrer = "//span[@id='template_x002e_datalists_x002e_data-lists_x0023_default-newList-form-submit']"
    div_succeedmessage1 ="//div[@id='template_x002e_datalists_x002e_data-lists_x0023_default-lists']/ul/li/a[text()='"
    div_succeedmessage2 = "']"


# Localisateurs pour 

class SupprimerSite:

    link_Site = "//span[@id='HEADER_SITES_MENU_text']"
    btn_Roue_Dentee = "//div[@id='HEADER_SITE_CONFIGURATION_DROPDOWN']"
    link_delete = "//td[@class='dijitReset dijitMenuItemLabel' and @id='HEADER_DELETE_SITE_text']"
    lbl_delete= "//div[@class='dialog-body']"
    btn_Ok = "//span[@class='dijitReset dijitInline dijitButtonText' and @id='ALF_SITE_SERVICE_DIALOG_CONFIRMATION_label']"
    

class SupprimerGroupe:
    link_outilsAdmin = "//span[@id='HEADER_ADMIN_CONSOLE_text']/a"
    link_groupes = "//a[text()='Groupes']"
    input_nomGroupe = "//input[@id='page_x002e_ctool_x002e_admin-console_x0023_default-search-text']"
    btn_rechercher = "//button[@id='page_x002e_ctool_x002e_admin-console_x0023_default-search-button-button']"
    link_supprimer1 = "//div[text()='"
    link_supprimer2 = "']/ancestor::tr//a[@class='delete']"
    btn_supprimer = "//button[@id='page_x002e_ctool_x002e_admin-console_x0023_default-remove-button-button']"

    