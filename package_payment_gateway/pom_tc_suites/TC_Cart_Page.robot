*** Settings ***
Documentation    Setting this TC for Registration Page elements.

Library     SeleniumLibrary
Library     BuiltIn
Library     DebugLibrary
Library     SikuliLibrary
Library     AutoRecorder

Resource        ../Resources/KW_Cart.robot
Resource        ../Resources/TC_SetUp_TearDown.robot

Suite Setup     TC_SetUp_TearDown.KW_1: Browser Invokes SetUp
Suite Teardown  TC_SetUp_TearDown.KW_4: Browser TearDown

*** Test Cases ***
TC to maximize the current browsers.
    [Documentation]     This TC is for Maximizing the browsers
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword                             Given KW_2: Browsers is Maximized
    And KW_3_0: Set Browser Implicit Wait

TC to Mouse Over on the Payment Gateway Project module on the landing page.
    [Documentation]     This TC is for mousehover the element Payment Project on the landing page.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure     KW: To Mouse Over on the Payment Gateway Project module on the landing page.

TC to Click on the Payment Gateway Project module on the landing page.
    [Documentation]     This TC is for Click on the Payment Gateway Project module on the landing page.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure     KW: To Click on the Payment Gateway Project module on the landing page.

TC to Compare the Elephant toy using SIKULI.
    [Documentation]     This TC is for Compare the Elephant toy.
    [Tags]              Smoke Test
    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    RUN KEYWORD AND CONTINUE ON FAILURE     KW: Compare the Elephant toy using SIKULI.

TC Click on the Guru99 Payment Gateway Element using SIKULI.
    [Documentation]     This TC is for Click on the Guru99 Payment Gateway Element using SIKULI.
    [Tags]              Smoke Test
    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure     KW: Click on the Guru99 Payment Gateway Element using SIKULI.

TC Click on the Cart Element not using SIKULI.
    [Documentation]     This TC is for Click on the Cart Element not using SIKULI.
    [Tags]              Smoke Test
    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure     KW: Click on the Cart Element not using SIKULI.

TC for the Quantity Element.
    [Documentation]     This TC is for Quantity & Buy now testing.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure     KW: For Quantity element.

TC for to Get Text from the quantity dropdown with the help of SIKULI.
    [Documentation]     This TC is for Quantity & Buy now testing.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure     KW: To Get Text from the quantity dropdown with the help of SIKULI.

TC for to do the Price and quantity calculation using selenium and buildIn.
    [Documentation]     This TC is for to do the Price and quantity calculation using selenium and buildIn.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure     KW: To do the Price and quantity calculation using selenium and buildIn.

TC for performing Action on Buy Now button. using selenium and buildIn and sikuli.
    [Documentation]     This TC is for to do the Price and quantity calculation using selenium and buildIn.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure     KW: Action on Buy Now button.

TC for the process purchase for the toy. using selenium and buildIn and sikuli.
    [Documentation]     This TC is for the process purchase for the toy. using selenium and buildIn and sikuli.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test
    run keyword and continue on failure     KW for the process purchase for the toy.

TC for testing the Expiration month & year alert present or not using Selenium & Sikuli.
    [Documentation]     This TC is for testing the Expiration month & year alert present or not using Selenium & Sikuli.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test
    run keyword and continue on failure     KW: for testing the Expiration month & year alert present or not using Selenium & Sikuli.

TC for testing Alert for the card number entry. using Selenium & Sikuli.
    [Documentation]     This TC is for testing Alert for the card number entry. using Selenium & Sikuli.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test
    run keyword and continue on failure     KW: Alert for the card number entry.

TC is for testing the Text for the Credit card field using Selenium & Sikuli.
    [Documentation]     This TC is for testing Text for the Credit card field using Selenium & Sikuli.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test
    run keyword and continue on failure     KW: Text alert for the Credit card field using Selenium & Sikuli.