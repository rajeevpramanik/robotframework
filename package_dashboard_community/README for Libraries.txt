>>>>> List of Framework and Library used RPA Project. <<<<<

CMD OR CLI: pip list / pip show package_name.

>>>>>> EXAMPLE for PABOT BAT FILE <<<<<<
E:
cd E:\Manual_Automation\PyCharmIDE\2021_Projects\Project_RPA_BlazeDemo_Site
pabot --processes 2 --outputdir packagerobot\Test_HTML_Reports packagerobot\Test_Cases\*.robot

>>>>>> EXAMPLE for ROBOT BAT FILE <<<<<<
C:
cd C:\Users\veera\Documents\package_restful_booker_herokuapp\
robot -d html_reports    pom_test_suite\*.robot

==============================================================================
# Links #
==============================================================================
1. Visit: https://libraries.io
2. Visit: https://robotframework.org
3. Visit: https://www.python.org
4. Visit: https://www.selenium.dev/downloads/
5. Visit: https://help.pace.qentinel.com/pacewords-reference/current/index_pacewords.html
6. Visit: https://github.com/qentinelqi/qweb


==============================================================================
# Plugins #
==============================================================================
1. Robot Framework Intellisense
2. robotframework
3. Robot Framework Language Server
4. Robot Framework Formatter 

==============================================================================
# Framework #
==============================================================================
1. robotframework:          pip3 install robotframework


==============================================================================
# Libraries #
==============================================================================

> RequestLibrary:          pip3 install robotframework-requests  (HTTPS)
> JSONLibrary:             pip3 install robotframework-jsonlibrary

> Qweb:                    pip3 install QWeb  (Web, UI & PDF)
> Selenium Library:        pip install robotframework-seleniumlibrary (Web)

> Appium                   pip3 install robotframework-appiumlibrary  (Mobile App)

> Sikuli Library:          pip3 install robotframework-SikuliLibrary  (UI)
> ScreenCapture            pip3 install --upgrade robotframework-screencaplibrary  (UI)

> ExcellentLibrary:        pip3 install robotframework-excellentlibrary (Excel)
> DataDriver:              pip3 install robotframework-datadriver  (Excel)

> Debug Library:           pip3 install robotframework-debuglibrary
> Faker:                   pip3 install robotframework-faker  (Fake Data)
> AutoRecorder:            pip3 install robotframework-autorecorder  (Visual)

> Pabot(Parallel Exe):     pip3 install -U robotframework-pabot  (Parallel Execution)
> Proxies:                 pip3 install -U robotframework-browsermobproxylibrary