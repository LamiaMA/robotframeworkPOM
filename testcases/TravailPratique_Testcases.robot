*** Settings ***
Library    SeleniumLibrary
Resource    ../ressources/TravailPratiqueKeyword.robot
***Variables***
${Url}    https://practicetestautomation.com/practice-test-login/
${navigateur}    gc  
${vld_username}    student
${pswrd}    Password123
${invld_username}     incorrectUser
${invpsswrd}    incorrectPassword 

*** Test Cases ***

CT1:Positive Login Test
    Ouvrir le navigateur   ${Url}  ${navigateur}  
    Saisir un nom d'utilisateur valide   ${vld_username} 
    Saisir un mot de passe valide   ${pswrd}
    Cliquer le bouton Submit
    Valider l'URL de la nouvelle page
    Vérifier que la page contient le text "Congratulations"
    Vérifier que le boutton Log out est affiché



CT2:Negative username test
    Ouvrir le navigateur    ${Url}    ${navigateur}  
    Saisir un nom d'utilisateur invalide    ${invld_username} 
    Saisir un mot de passe valide   ${pswrd}
    Cliquer le bouton Submit 
    Vérifier l'affichage du message d'erreur (Your username is invalid!)
    Vérifier que le text du message est "Your username is invalid!" 




CT3:Negative password test
    Ouvrir le navigateur    ${Url}    ${navigateur}
    Saisir un nom d'utilisateur valide   ${vld_username}
    Saisir un mot de passe incorrect    ${invpsswrd} 
    Cliquer le bouton Submit
    Vérifier l'affichage du message d'erreur (Your password is invalid!)
    Vérifier que le text du message d'erreur est "Your password is invalid!"

    
    

    
    
    
    
    
    


    

