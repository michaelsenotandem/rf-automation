*** Settings ***
Resource        ../../helpers/common_helper.resource
Resource        ../../variables/common_variable.resource

*** Variables  ***
# Elements
${google_INPUT_element}     //input[@class="gLFyf gsfi"]
${google_LOGO}              //img[@alt="Google"]

${cite_robot_framework}     //cite[contains(., "https://robotframework.org")]
${cite_chrome_driver}       //cite[contains(., "https://chromedriver.chromium.org")]
${cite_selenium}            //cite[contains(., "https://www.selenium.dev")]
${cite_appium}              //cite[contains(., "https://appium.io")]
${cite_github}              //cite[contains(., "https://github.com")]


*** Keywords ***
# GIVEN
I Open Google Website
    openWebsite    ${google_URL}       ${Chrome_BROWSER}       ${google_LOGO}      ${google_title}


# WHEN
I Searched Robot Framework String in the Google Search Field
    inputValue              ${google_INPUT_element}         ${robot_framework}
    keyboardPressEnter      ${google_INPUT_element}


I Searched Chrome Driver String in the Google Search Field
    inputValue              ${google_INPUT_element}         ${chrome_driver}
    keyboardPressEnter      ${google_INPUT_element}


I Searched Selenium String in the Google Search Field
    inputValue              ${google_INPUT_element}         ${selenium}
    keyboardPressEnter      ${google_INPUT_element}


I Searched Appium String in the Google Search Field
    inputValue              ${google_INPUT_element}         ${appium}
    keyboardPressEnter      ${google_INPUT_element}

I Searched Github String in the Google Search Field
    inputValue              ${google_INPUT_element}         ${github}
    keyboardPressEnter      ${google_INPUT_element}


# THEN
I should be seeing the Robot Framework url in the Search Result
    ensureElementExist      ${cite_robot_framework}


I should be seeing the Chrome Driver url in the Search Result
    ensureElementExist      ${cite_chrome_driver}


I should be seeing the Selenium url in the Search Result
    ensureElementExist      ${cite_selenium}


I should be seeing the Appium url in the Search Result
    ensureElementExist      ${cite_appium}

I should be seeing the Github url in the Search Result
    ensureElementExist      ${cite_github}

