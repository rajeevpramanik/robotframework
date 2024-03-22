***Settings***
Documentation   This setting is for the logout module.

Resource        ../setup_teardown/setup_teardown_func.robot


***Variables***
${webcommunity my profile element top right xpath}     xpath\=//body/div[@id\='root']/div/div/div/div[3]/span[1]/div[1]/div[1]
${webcommunity my profile element logout options xpath}        xpath\=//p[contains(text(),'Logout')]




***Keywords***
KW: Verify the my profile element is present.
    QWeb.Verify Element      ${webcommunity my profile element top right xpath}

KW: Click the my profile element is present.
    QWeb.Click Element       ${webcommunity my profile element top right xpath}

KW: Verify the logout element is present.
    QWeb.Verify Element      ${webcommunity my profile element logout options xpath}

KW: Click the my profile logout option.
    QWeb.Click Text       Logout     anchor=Time Format (24 Hours)