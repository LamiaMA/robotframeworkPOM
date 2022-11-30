*** Settings ***
Library    SeleniumLibrary
Variables    ../pageobjects/locators.py


*** Keywords ***
Ouvrir le navigateur
    [Arguments]     ${url}   ${browser}
    Open Browser     ${url}   ${browser}
Saisir un nom d'utilisateur valide
    [Arguments]    ${vld_username}
    Input Text  ${txt_username}     ${vld_username}
Saisir un mot de passe valide
    [Arguments]    ${pswrd}
    Input Password    ${txt_password}     ${pswrd}
Cliquer le bouton Submit
    Click Button    ${submit_button}
Valider l'URL de la nouvelle page
    ${url1} =  Execute Javascript  return window.location.href;
    Log To Console     ${url1}  
    Page Should Contain    practicetestautomation.com/logged-in-successfully/
Vérifier que la page contient le text "Congratulations"
    Page Should Contain    Congratulations 
Vérifier que le boutton Log out est affiché
    Sleep    2
    Page Should Contain Element    ${button_logout}
Saisir un nom d'utilisateur invalide
    [Arguments]    ${invld_username}
    Input Text   ${txt_password}    ${invld_username}
Vérifier l'affichage du message d'erreur (Your username is invalid!)
     Page Should Contain Element    ${username_error_msg}
Vérifier que le text du message est "Your username is invalid!" 
     Element Should Contain    ${username_error_msg}   Your username is invalid!
Saisir un mot de passe incorrect
    [Arguments]    ${invpsswrd}
    Input Password    ${txt_password}   ${invpsswrd} 
Vérifier l'affichage du message d'erreur (Your password is invalid!)
       Page Should Contain Element   ${psswrd_error_msg}
Vérifier que le text du message d'erreur est "Your password is invalid!"
     Element Should Contain   ${psswrd_error_msg}   Your password is invalid!








    
    

    
    
    
    
    
    


    

