# cd
# cd /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_cms_webcommunity
# robot -d    html_reports     --skip visual --skip negative  pom_tc_suites
# robot -d    html_reports     --skip visual --skip negative  --suite pom_tc_suites.02_tc_login       pom_tc_suites
# robot -d    html_reports     --skip visual --skip negative  --suite pom_tc_suites.01_tc_signup   --suite pom_tc_suites.03_tc_onboarding    --suite pom_tc_suites.04_tc_integration_sso        pom_tc_suites
# robot -d    html_reports     --skip visual --skip negative  --suite pom_tc_suites.02_tc_login   --suite pom_tc_suites.04_tc_integration_sso     pom_tc_suites
# robot -d    html_reports     --skip visual --skip negative  --suite pom_tc_suites.02_tc_login --suite pom_tc_suites.05_tc_place      pom_tc_suites
# robot -d    html_reports    --suite pom_tc_suites.01_tc_chargebee_signup     --suite pom_tc_suites.03_tc_login       --suite pom_tc_suites.05_tc_place      --suite pom_tc_suites.06_tc_people_bulk_upload      --suite pom_tc_suites.08_tc_lounge_cms      --suite pom_tc_suites.14_tc_integration_salesforce       --suite pom_tc_suites.09_tc_lounge_webcommunity     --suite pom_tc_suites.12_1_tc_branding_cms_webcommunity_e2e       --suite pom_tc_suites.99_tc_delete_place        pom_tc_suites
robot -d    html_reports    --skip visual --skip negative  --variable admincmsurl:https://newcms.v2release.demogurupoint.com       --suite pom_tc_suites.03_tc_login       pom_tc_suites