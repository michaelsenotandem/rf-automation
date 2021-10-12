*** Variables ***
# Static Variables
${Chrome_BROWSER}           Chrome
${agba_site_URL}            https://websitedev-demo.azurewebsites.net/
${agba_site_title}          AGBA – All Greater Together

# HEADER AREA
${agba_site_LOGO}                   //img[@class="logo__image"]
${agba_site_stockName}              //span[@class="stock__name"]/strong[contains(., "NASDAQ:")]
${agba_site_stockPrice}             //span[@class="stock__price"]
${agba_site_delta}                  //span[@class="stock__delta stock__delta--down"]

# FOOTER AREA
${agba_site_copyrightText}          //span[contains(., "Copyright © 2021 AGBA Group Holdings Limited") and @class="copyright__text"]
${agba_site_privacyPolicy}          //a[contains(., "Privacy policy")]
${agba_site_disclaimer}             //a[contains(., "Disclaimer")]