*** Settings ***
Documentation       Landing Page Validation
Resource            ../../steps/agba_website/home_page.robot

Test Teardown       Close Browser

*** Test Cases ***
AGBA Home Page Validation
    Given I am in the AGBA Home Page
    Then I should be seeing the Company Option
    AND I should be seeing the Businesses Option
    AND I should be seeing the Brands Option
    AND I should be seeing the Contacts Option
    AND I should be seeing the Copyright Text in the Footer area
    AND I should be seeing the Privacy Policy link in the Footer area
    AND I should be seeing the Disclaimer link in the Footer area