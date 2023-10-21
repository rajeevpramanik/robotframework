***Settings***
Documentation   This setting is for the login module.
Resource        ../setup_teardown/setup_teardown_func.robot

***Variables***
${email field}                                  xpath\=/html//input[@id\='email']
${password field}                               xpath\=/html//input[@id\='password']
${password encrypted eye}                       xpath\=//span[@class\='MuiIconButton-label']//*[local-name()\='svg']
${password dicrypted eye}                       xpath\=//*[name()\='path' and contains(@d,'M12 7c2.76')]
${login button}                                 xpath\=/html//main[@id\='root']/div[@class\='MuiScopedCssBaseline-root']/div[1]//form//button[@type\='submit']//span[@class\='MuiBox-root jss41']
${reception module xpath}                       xpath\=//span[normalize-space()\='Reception']
${please_enter_your_email_id_alert_xpath}       xpath\=/html//p[@id\='email-help-text']
${please_enter_your_password_alert_xpath}       xpath\=/html//p[@id\='password-help-text']
${login button text}                            LOGIN

***Keywords***
KW: Fetch org fname, Lname from the excel.
    KW: Read excel for fname.
    KW: Read excel for lname.
