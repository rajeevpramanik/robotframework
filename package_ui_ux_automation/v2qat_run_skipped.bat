@REM # cd
@REM # cd /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_cms_webcommunity
@REM robot -d    html_reports     --skip visual  pom_tc_suites
@REM # robot -d    html_reports     --skip visual --skip negative  --suite pom_tc_suites.02_tc_login --suite pom_tc_suites.05_tc_place      pom_tc_suites
@REM # robot -d    html_reports    --suite pom_tc_suites.00_tc_cookies     --suite pom_tc_suites.03_tc_login       --suite pom_tc_suites.05_tc_place      --suite pom_tc_suites.06_tc_people_bulk_upload      --suite pom_tc_suites.08_tc_lounge_cms       --suite pom_tc_suites.09_tc_lounge_webcommunity     --suite pom_tc_suites.12_1_tc_branding_cms_webcommunity_e2e       --suite pom_tc_suites.99_tc_delete_place        pom_tc_suites
robot -d    html_reports    --skip visual --skip negative  --variable admincmsurl:https://newcms.v2qat.demogurupoint.com  --suite pom_tc_suites.03_tc_login       --suite pom_tc_suites.14_tc_integration_salesforce        pom_tc_suites