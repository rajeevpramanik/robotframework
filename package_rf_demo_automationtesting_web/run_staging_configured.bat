@REM robot -d html_reports   --skip Postive  --suite pom_test_suite.tc_1_auth_create_token --suite pom_test_suite.tc_2_createbooking --suite pom_test_suite.tc_3_booking_getbookingids --suite pom_test_suite.tc_6_partialupdatebooking   pom_test_suite/*.robot
@REM --include   sanity ^
@REM --exclude   smoke ^
@REM --suite test_suite.test1_echo_raw --suite test_suite.test2_echo_raw_queryparams --suite test_suite.test3_echo_header ^
C:
cd C:/Users/veera/Documents/GitHub/github_all_in_one_repo/package_websocket/
robot -d ^
html_reports ^
    --skip negative ^
    --variable environment:staging ^
    --suite test_suite.test1_echo_raw ^
    --suite test_suite.test2_echo_raw_queryparams ^
    --suite test_suite.test3_echo_header ^
    --suite test_suite.test4_echo_json ^
    --suite test_suite.test5_echo_socketio_random ^
test_suite