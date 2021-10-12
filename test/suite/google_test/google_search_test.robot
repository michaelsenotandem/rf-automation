*** Settings ***
Documentation       Simple Google Search for different Search Criterias
Resource            ../../steps/google/google_search_page.robot   

Test Teardown       Close Browser

*** Test Cases ***
Valid Search for the String Robot Framework
    Given I Open Google Website
    When I Searched Robot Framework String in the Google Search Field
    Then I should be seeing the Robot Framework url in the Search Result

Valid Search for the String Chrome Driver
    Given I Open Google Website
    When I Searched Chrome Driver String in the Google Search Field
    Then I should be seeing the Chrome Driver url in the Search Result

Valid Search for the String Selenium
    Given I Open Google Website
    When I Searched Selenium String in the Google Search Field
    Then I should be seeing the Selenium url in the Search Result

Valid Search for the String Appium
    Given I Open Google Website
    When I Searched Appium String in the Google Search Field
    Then I should be seeing the Appium url in the Search Result

Valid Search for the Github
    Given I Open Google Website
    When I Searched Github String in the Google Search Field
    Then I should be seeing the Github url in the Search Result