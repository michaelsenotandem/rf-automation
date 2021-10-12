*** Settings ***
Resource        ../../helpers/common_helper.resource
Resource        ../../variables/agba_site_variable.resource

*** Variables  ***
# Elements
${agba_site_companyOption}          //li[@class="list__item"]/a[contains(., "Company")]     
${agba_site_businessesOption}       //li[@class="list__item"]/a[contains(., "Businesses")]   
${agba_site_brandsOption}           //li[@class="list__item"]/a[contains(., "Brands")]   
${agba_site_contactOption}          //li[@class="list__item"]/a[contains(., "Contact")]   

*** Keywords ***
# GIVEN
I am in the AGBA Home Page
    openWebsite     ${agba_site_URL}        ${Chrome_BROWSER}       ${agba_site_LOGO}       ${agba_site_title}

# WHEN
I navigate to Company Page
    elementClick        ${agba_site_companyOption}

I navigate to Businesses Page
    elementClick        ${agba_site_businessesOption}

I navigate to Brands Page
    elementClick        ${agba_site_brandsOption}

I navigate to Contacts Page
    elementClick        ${agba_site_contactOption}

I navigate to Privacy Policy Page
    elementClick        ${agba_site_privacyPolicy}

# THEN
I should be seeing the Company Option
    ensureElementExist      ${agba_site_companyOption}

I should be seeing the Businesses Option
    ensureElementExist      ${agba_site_businessesOption}

I should be seeing the Brands Option
    ensureElementExist      ${agba_site_brandsOption}

I should be seeing the Contacts Option
    ensureElementExist      ${agba_site_contactOption}

I should be seeing the Copyright Text in the Footer area
    ensureElementExist      ${agba_site_copyrightText}

I should be seeing the Privacy Policy link in the Footer area
    ensureElementExist      ${agba_site_privacyPolicy}

I should be seeing the Disclaimer link in the Footer area
    ensureElementExist      ${agba_site_disclaimer}
