###### **[Project Owner: Rajeev Kumar Pramanik](https://www.linkedin.com/in/rajeev-k-0844431b0/) (Test Engineer)** [***ISTQB (CTFL)***](https://www.gasq.org/en/registration/expert/expert/9880AE6B-229D-49C4-BFA8-EFCC9464118D.html)

**[Robot Framework](https://robotframework.org/)** *is a generic open source automation framework. It can be used for test automation and robotic process automation (RPA).*

***Robot Framework** has easy syntax, utilizing human-readable keywords. Its capabilities can be extended by libraries implemented with Python or Java. The framework has a rich ecosystem around it, consisting of [libraries](https://robotframework.org/#libraries) and [tools](https://robotframework.org/#tools) that are developed as separate projects.*

*Robot Framework project is hosted on [GitHub](https://github.com/robotframework/robotframework) where you can find further documentation, source code, and issue tracker. Downloads are hosted at [PyPI](https://pypi.python.org/pypi/robotframework).*

==============================================================

**[HTTP RequestsLibrary (Python)](https://github.com/MarketSquare/robotframework-requests#readme)** is a Robot Framework library aimed to provide HTTP api testing functionalities by wrapping the well known Python Requests Library.

==============================================================

**[WebSocket-client](https://github.com/websocket-client/websocket-client#websocket-client)** is [Robot Framework](http://robotframework.org/) test library that uses the [websocket-client](https://github.com/websocket-client/websocket-client) module.

==============================================================

**[Qweb](https://github.com/qentinelqi/qweb)** is an open source web automation interface in [Robot Framework](https://robotframework.org/). It makes automation  **rapid, robust, and fun**.

Qweb is a modern web testing library focusing on making web testing and automation Easy 🎉 and maintainable 🧹 with its high level keyword design.

QWeb aims to make web automation easy and maintainable by:

* providing high level keywords for accessing any web page element
* preferring text locators (UI texts) but supporting also other locator strategies (xpaths, css selectors)
* automatically handling latencies etc. via automatic wait times
* automatically handling unexpected alerts
* minimizing the maintenance effort.
* Playing around with image & verifying the images.
* Pdf data verification.

See [examples](https://github.com/qentinelqi/qweb#examples).

==============================================================

[AppiumLibrary](https://github.com/serhatbolsu/robotframework-appiumlibrary) for Android and iOS testing. It uses Appium internally.

==============================================================

[DataDriver Library](https://github.com/Snooz82/robotframework-datadriver) for Data-Driven Testing with external 📤 data tables (csv, xls, xlsx, etc.). 🧬 Pairwise Combinatorial Testing support.

==============================================================

**[ExcellentLibrary](https://bartkl.github.io/robotframework-excellentlibrary/documentation/ExcellentLibrary.html)** This library is built on top of *OpenPyXL* in order to bring its functionality to  *Robot Framework* . The major motivation for this was to add support for *Excel 2010* (XSLX) files, which *ExcelLibrary* does not support.

==============================================================

**[Pabot](https://pabot.org/)** a parallel executor for [Robot Framework](https://robotframework.org/) tests. Split one execution into multiple and save test execution time.

*********List of Commands, Framework and Library can be used for RPA Project.*********

CMD OR CLI: pip list / pip show package_name.

EXAMPLE for PABOT BAT FILE <<<<<<
E:
cd E:\Manual_Automation\PyCharmIDE\2021_Projects\Project_RPA_BlazeDemo_Site
pabot --processes 2 --outputdir packagerobot\Test_HTML_Reports packagerobot\Test_Cases\*.robot

EXAMPLE for ROBOT BAT FILE <<<<<<
C:
cd C:\Users\veera\Documents\package_restful_booker_herokuapp
robot -d html_reports    pom_test_suite\*.robot

==============================================================

# Single command in python to install relevant modules from a package.json like file

pip3 install -r requirements.txt
================================

# Links

==============================================================

1. Visit: https://libraries.io
2. Visit: https://robotframework.org
3. Visit: https://www.python.org
4. Visit: https://www.selenium.dev/downloads/
5. Visit: https://help.pace.qentinel.com/pacewords-reference/current/index_pacewords.html
6. Visit: https://github.com/qentinelqi/qweb
7. https://raw.githack.com/sebastianciupinski/robotframework-listenerlibrary/master/docs/ListenerLibrary.html
8. https://docs.robotframework.org/docs/examples/project_structure
9. https://robocorp.com/docs/setup/robot-yaml-format

==============================================================

# Plugins

==============================================================

1. Robot Code : https://marketplace.visualstudio.com/items?itemName=d-biehl.robotcode

==============================================================

# Framework

==============================================================

1. robotframework:          pip3 install robotframework

==============================================================

# Libraries

==============================================================

1. Qweb:                        	pip3 install QWeb (W); python3 -m pip install QWeb(Lin/Mac)
2. ExcellentLibrary:            	pip3 install robotframework-excellentlibrary
3. Debug Library:               	pip3 install robotframework-debuglibrary
4. Faker:			       	pip3 install robotframework-faker
5. AutoRecorder:                	pip3 install robotframework-autorecorder
6. RequestLibrary:              	pip3 install robotframework-requests
7. Pabot(Parallel Exe):        	pip3 install -U robotframework-pabot
8. Proxies:                     	pip3 install -U robotframework-browsermobproxylibrary
9. BuiltIn:
10. Collections:
11. DateTime:
12. DataDriver:                 	pip3 install robotframework-datadriver
13. Selenium Library:           	pip3 install robotframework-seleniumlibrary
14. Sikuli Library:             	pip3 install robotframework-SikuliLibrary
15. Browser(Playwright):       pip3 install robotframework-browser
16. Puppeteer Library:          python -m playwright install ; pyppeteer-install
17. SSH Library:                	pip3 install robotframework-sshlibrary
18. JSONLibrary:                	pip3 install robotframework-jsonlibrary
19. ScreenCapture:              	pip3 install --upgrade robotframework-screencaplibrary
20. Eyes:                       	pip3 install robotframework-eyes
21. ImageLibrary:               	pip3 install robotframework-imagelibrary
22. WebSocketClient:            pip3 install robotframework-websocketclient
23. Appium: 				pip3 install robotframework-appiumlibrary
24. ListenerLibrary:		pip3 install robotframework-listenerlibrary
