# cd
# cd /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_dashboard_community
# robot -d    html_reports     --skip visual --skip negative  pom_tc_suites
# robot -d    html_reports     --skip visual --skip negative  --suite pom_tc_suites.02_tc_login       pom_tc_suites
# robot -d    html_reports     --skip visual --skip negative  --suite pom_tc_suites.01_tc_signup   --suite pom_tc_suites.03_tc_onboarding    --suite pom_tc_suites.04_tc_integration_sso        pom_tc_suites
# robot -d    html_reports     --skip visual --skip negative  --suite pom_tc_suites.02_tc_login   --suite pom_tc_suites.04_tc_integration_sso     pom_tc_suites
# robot -d    html_reports     --skip visual --skip negative  --suite pom_tc_suites.02_tc_login --suite pom_tc_suites.05_tc_events      pom_tc_suites
# robot -d    html_reports     --suite pom_tc_suites.02_tc_login  --suite pom_tc_suites.05_tc_events  --suite pom_tc_suites.08_tc_lounge_dashboard  --suite pom_tc_suites.99_tc_delete_events  --suite pom_tc_suites.06_tc_people_bulk_upload  --suite pom_tc_suites.01_tc_signup  --suite pom_tc_suites.03_tc_onboarding        pom_tc_suites
# robot -d    html_reports    --suite pom_tc_suites.03_tc_onboarding  --suite pom_tc_suites.01_tc_signup  --suite pom_tc_suites.02_tc_login  --suite pom_tc_suites.05_tc_events  --suite pom_tc_suites.08_tc_lounge_dashboard  --suite pom_tc_suites.09_tc_lounge_community  --suite pom_tc_suites.99_tc_delete_events  --suite pom_tc_suites.06_tc_people_bulk_upload     pom_tc_suites
# robot -d    html_reports    --skip negative  --suite pom_tc_suites.01_tc_signup  --suite pom_tc_suites.02_tc_onboarding  --suite pom_tc_suites.03_tc_login  --suite pom_tc_suites.05_tc_events  --suite pom_tc_suites.06_tc_people_bulk_upload  --suite pom_tc_suites.11_tc_branding_dashboard  --suite pom_tc_suites.12_tc_branding_community  --suite pom_tc_suites.99_tc_delete_events  --suite pom_tc_suites.08_tc_lounge_dashboard  --suite pom_tc_suites.09_tc_lounge_community   pom_tc_suites
robot -d    html_reports    --suite pom_tc_suites.03_tc_login  --suite pom_tc_suites.05_tc_events  --suite pom_tc_suites.06_tc_people_bulk_upload  --suite pom_tc_suites.11_tc_branding_dashboard  --suite pom_tc_suites.12_tc_branding_community  --suite pom_tc_suites.99_tc_delete_events        pom_tc_suites