*** Settings ***
Documentation   This setting is for the sikuli functions.

Variables       ../test_data/td_page_guru_bank.py
Resource        ../setup_teardown/setup_teardown_func.robot

*** Variables ***
${login_image}                                            /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_dashboard_community/sikuli_stored_images/login_page/
${sign_up_image}                                          /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_dashboard_community/sikuli_stored_images/signup_page/
${sso_image}                                              /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_dashboard_community/sikuli_stored_images/sso_page/
${events_three_dots_image}                                /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_dashboard_community/sikuli_stored_images/delete_events/
${lounge_images}                                          /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_dashboard_community/sikuli_stored_images/lounge_page/
${community_login_page}                                   /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_dashboard_community/sikuli_stored_images/community_login/
${branding_folder_path}                                   /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_dashboard_community/sikuli_stored_images/branding/
${branding_uploaded_folder_path}                          /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_dashboard_community/uploading_images/branding/

*** Keywords ***
KW: Start SIKULI SERVER Process.
    SikuliLibrary.Start Sikuli Process

KW: Stop SIKULI SERVER Process.
    SikuliLibrary.Stop Remote Server

KW: Sikuli take whole screen.
    Capture Screen