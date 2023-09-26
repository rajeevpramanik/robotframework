robot -d ^
html_reports ^
    --skip negative ^
    --variable environment:uat ^
    --suite test_suite.test1_echo_raw ^
    --suite test_suite.test2_echo_raw_queryparams ^
    --suite test_suite.test3_echo_header ^
    --suite test_suite.test4_echo_json ^
    --suite test_suite.test5_echo_socketio_random ^
test_suite