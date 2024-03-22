*** Settings ***
Documentation   This setting is for the sikuli functions.

Variables       ../test_data/td_page_messages.py
Resource        ../setup_teardown/setup_teardown_func.robot

*** Variables ***
${integration_salesforce_image}                           /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_cms_webcommunity/sikuli_stored_images/integration_sales_force/
${login_image}                                            /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_cms_webcommunity/sikuli_stored_images/login_page/
${sign_up_image}                                          /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_cms_webcommunity/sikuli_stored_images/signup_page/
${sso_image}                                              /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_cms_webcommunity/sikuli_stored_images/sso_page/
${events_three_dots_image}                                /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_cms_webcommunity/sikuli_stored_images/delete_events/
${lounge_images}                                          /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_cms_webcommunity/sikuli_stored_images/lounge_page/
${webcommunity_login_page}                                   /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_cms_webcommunity/sikuli_stored_images/webcommunity_login/
${branding_folder_path}                                   /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_cms_webcommunity/sikuli_stored_images/branding/
${branding_uploaded_folder_path}                          /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_cms_webcommunity/uploading_images/branding/

*** Keywords ***
KW: Start SIKULI SERVER Process.
    SikuliLibrary.Start Sikuli Process

KW: Stop SIKULI SERVER Process.
    SikuliLibrary.Stop Remote Server

KW: Sikuli take whole screen.
    Capture Screen