*** Settings ***
Documentation   POM or Variables and Keywords for creating Auth or Token.
Resource        ../main_setup_teardown/setup_teardown_func.robot


*** Variables ***
${The work book}                    ../package_restful_booker_herokuapp_enhancement/test_excel_ddt/testfile.xlsx
${api_base_url}                     https://restful-booker.herokuapp.com
${API AUTH END POINT}               /auth
${session_restful_brooker}          restful_brooker
# ${dic data}         User-Agent=${useragent}     Content-Type=application/json       accept=application/json