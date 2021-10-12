*** Settings ***
Documentation       Login Cv1 Hub - eSubmission
Resource            ../../steps/cv1/hub_login_page.robot       

Test Teardown       Close Browser

*** Test Cases ***

Valid Login
    Given I open CV1 login page
    When I enter username and pw
    Then I should be login successfully