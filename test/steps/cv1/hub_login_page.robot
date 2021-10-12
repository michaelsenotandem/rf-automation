*** Settings ***
Library         SeleniumLibrary
Resource        ../../helpers/common_helper.resource
Resource        ../../variables/common_variable.resource

*** Variables ***
# Elements
${hub_login_title}              Consultant Hub
${hub_Convoy_logo}              //img[@id='companyLogo']
${hub_eSubmission_logo}         //body/app-root[1]/core-ui-dashboard[1]/div[5]/main[1]/ng-component[1]/div[1]/div[1]/span[1]/b[1]

# Locator
${hub_username_field}           //input[@id='userNameInput']
${hub_password_field}           //input[@id='passwordInput']
${hub_login_button}             //span[@id='submitButton']


*** Keywords ***

#Given
I open CV1 login page
    openWebsite         ${Cv1Hub_URL}  ${Chrome_BROWSER}  ${hub_Convoy_logo}  ${hub_login_title}

#When
I enter username and pw
    inputValue          ${hub_username_field}  ${username}
    inputValue          ${hub_password_field}  ${password}
    elementClick        ${hub_login_button}

#Then
I should be login successfully
    ensureElementExist  ${hub_eSubmission_logo}


    