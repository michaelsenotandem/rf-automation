*** Settings ***
Resource        ../../helpers/common_helper.resource
Resource        ../../variables/agba_site_variable.resource

*** Variables  ***
# Elements
${agba_contact_formHeader}                  //div[contains(., "Complete form and send inquiry direct to the right AGBA team") and @class="form-header"]
${agba_contact_businessUnit_dropdown}       //select[@name="business-units-select"]
${agba_contact_name_field}                  //input[@name="your-name"]
${agba_contact_email_field}                 //input[@name="your-email"]
${agba_contact_i_am_a_field}                //input[@name="your-ima"]
${agba_contact_message_textArea}            //textarea[@name="your-message"]
${agba_contact_send_inquiry_button}         //input[@value="Send Inquiry"]

# Dropdown Option
${agba_contact_BU_onePlatForm_option}                   //option[@value="OnePlatform"]
${agba_contact_BU_onePlatForm_wealth_mgmt_option}       //option[@value="OnePlatform Wealth Management"]
${agba_contact_BU_onePlatForm_asset_mgmt_option}        //option[@value="OnePlatform Asset Management"]
${agba_contact_BU_onePlatForm_int_property_option}      //option[@value="OnePlatform International Property"]
${agba_contact_BU_onePlatForm_credit_option}            //option[@value="OnePlatform Credit"]
${agba_contact_BU_Tandem_option}                        //option[@value="Tandem"]
${agba_contact_BU_HealthCare2U_option}                  //option[@value="HealthCare2U"]
${agba_contact_BU_convoy_FS_option}                     //option[@value="Convoy Financial Services"]




*** Keywords ***
# GIVEN

# WHEN
I click on the business unit dropdown
    elementClick  ${agba_contact_businessUnit_dropdown}

# THEN
I should be navigated to the AGBA Contact Page
    ensureElementExist  ${agba_contact_formHeader}

I should see the Send Inquiry form
    ensureElementExist  ${agba_contact_businessUnit_dropdown}
    ensureElementExist  ${agba_contact_name_field}
    ensureElementExist  ${agba_contact_email_field}
    ensureElementExist  ${agba_contact_i_am_a_field}
    ensureElementExist  ${agba_contact_message_textArea}
    ensureElementExist  ${agba_contact_send_inquiry_button}

I should see all the business unit options in the Inquiry Form
    ensureElementExist  ${agba_contact_BU_onePlatForm_option}
    ensureElementExist  ${agba_contact_BU_onePlatForm_wealth_mgmt_option}
    ensureElementExist  ${agba_contact_BU_onePlatForm_asset_mgmt_option}
    ensureElementExist  ${agba_contact_BU_onePlatForm_int_property_option}
    ensureElementExist  ${agba_contact_BU_onePlatForm_credit_option}
    ensureElementExist  ${agba_contact_BU_Tandem_option}
    ensureElementExist  ${agba_contact_BU_HealthCare2U_option}
    ensureElementExist  ${agba_contact_BU_convoy_FS_option}