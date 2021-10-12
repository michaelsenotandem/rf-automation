*** Settings ***
Documentation       Contact Page Validation
Resource            ../../steps/agba_website/home_page.robot   
Resource            ../../steps/agba_website/contact_page.robot  

Test Teardown       Close Browser

*** Test Cases ***
AGBA Contact Page Validation
    Given I am in the AGBA Home Page
    When I navigate to Contacts Page
    Then I should be navigated to the AGBA Contact Page
    AND I should see the Send Inquiry form

AGBA Business Unit dropdown option validation
    Given I am in the AGBA Home Page
    When I navigate to Contacts Page
    AND I click on the business unit dropdown
    Then I should see all the business unit options in the Inquiry Form