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





    