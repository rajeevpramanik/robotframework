# cd
# cd /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_dashboard_community
# robot -d    output     --skip visual --skip negative  pom_tc_suites
# robot -d    output     --skip visual --skip negative  --suite pom_tc_suites.02_tc_login       pom_tc_suites
# robot -d    output     --skip visual --skip negative  --suite pom_tc_suites.01_tc_signup   --suite pom_tc_suites.03_tc_onboarding    --suite pom_tc_suites.04_tc_integration_sso        pom_tc_suites
# robot -d    output     --skip visual --skip negative  --suite pom_tc_suites.02_tc_login   --suite pom_tc_suites.04_tc_integration_sso     pom_tc_suites
# robot -d    output     --skip visual --skip negative  --suite pom_tc_suites.02_tc_login --suite pom_tc_suites.05_tc_place      pom_tc_suites
# robot -d    output    --suite pom_tc_suites.00_tc_cookies     --suite pom_tc_suites.03_tc_login       --suite pom_tc_suites.05_tc_place      --suite pom_tc_suites.06_tc_people_bulk_upload      --suite pom_tc_suites.08_tc_lounge_dashboard       --suite pom_tc_suites.09_tc_lounge_community     --suite pom_tc_suites.12_1_tc_branding_dashboard_community_e2e       --suite pom_tc_suites.99_tc_delete_place        pom_tc_suites
robot -d    output        --skip negative  --variable environment:uat    --suite test_cases.test1_echo_raw      test_cases       #--suite test_cases.test2_echo_raw_queryparams        test_cases