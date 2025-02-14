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
    link_fichierHtml = "//li[@id='yui-gen2']"
    input_name = "//input[@id='template_x002e_create-content_x002e_create-content_x0023_default_prop_cm_name']"
    # input_contenufichier = "//iframe[@id='template_x002e_create-content_x002e_create-content_x0023_default_prop_cm_content_ifr']"
    input_titre = "//input[@id='template_x002e_create-content_x002e_create-content_x0023_default_prop_cm_title']"
    textarea_description = "//textarea[@id='template_x002e_create-content_x002e_create-content_x0023_default_prop_cm_description']"
    btn_creer = "//button[@id='template_x002e_create-content_x002e_create-content_x0023_default-form-submit-button']"

class SupprimerDossier:
    link_mesfichiers = "//span[@id='HEADER_MY_FILES_text']"
    checkBox1_dossier = "//font[text()='"
    checkBox2_dossier = "']/ancestor::tr/td//input[@type='checkbox']"
    btn_articleSelectionnes = "//button[@id='template_x002e_documentlist_v2_x002e_myfiles_x0023_default-selectedItems-button-button']"
    link_supprimer = "//li[@id='yui-gen12']/a/span/font/font"
    btn_supprimer = "//button[@id='yui-gen196-button']"
