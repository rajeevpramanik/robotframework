"""This is a locators page of all the elements within the website"""

# Get All links in the webpage#
Xpath_Payment_Gateway_Project_Element = "xpath://*[starts-with(@class,'collapse navbar-collapse')]//a[contains(text(),'Payment Gateway Project')]"
Xpath_Guru99_Payment_Gateway = "xpath://*[starts-with(@id,'header')]//*[contains(text(),'Guru99 Payment Gateway')]"
Xpath_Cart = "xpath://*[starts-with(@id,'header')]//*[contains(text(),'Cart')]"
Xpath_Generate_Card_Number = "xpath://*[starts-with(@id,'header')]//*[contains(text(),'Generate Card Number')]"
Xpath_Check_Credit_Card_Limit = "xpath://*[starts-with(@id,'header')]//*[contains(text(),'Check Credit Card Limit')]"
Xpath_Quantity = "xpath://*[starts-with(@action,'process_purchasetoy.php')]//*[contains(@name,'quantity')]"
Xpath_Buy_Now = "xpath://body/section[@id='three']/div[1]/form[1]/div[1]/div[8]/ul[1]/li[1]/input[1]"

# Check Credit Balance Page #
Xpath_Enter_Credit_Card_Number = "xpath://input[@id='card_nmuber']"
Xpath_Field_Must_not_be_blank = "xpath://*[starts-with(@method,'post')]//*[contains(text(),'Field must not be blank')]"
Xpath_Characters_Not_Allowed = "xpath://*[starts-with(@method,'post')]//*[contains(text(),'Characters are not allowed')]"
Xpath_Special_Characters_Not_Allowed = "xpath://*[starts-with(@method,'post')]//*[contains(text(),'Special characters are not allowed')]"
Xpath_Submit = "xpath://body/section[@id='three']/div[1]/form[1]/div[1]/div[6]/input[1]"

# Here is your New Card Page #
Xpath_ABS_cARD_nUMBER = "xpath:/html/body/section/div/h4[1]"
Xpath_CVV_Card_Number = "xpath:/html/body/section/div/h4[2]"
Xpath_Exp_Date = "xpath:/html/body/section/div/h4[3]"
Xpath_Credit_Limit = "xpath:/html[1]/body[1]/section[1]/div[1]/h4[4]/span[1]"

# Here is your payment process purchase toy page #
Xpath_Card_Number = "xpath://input[@id='card_nmuber']"
Xpath_Card_Number_Field_Cannot_Be_Blank = "xpath://*[starts-with(@class,'row uniform')]//label[contains(text(),'Field must not be blank') and @id='message1']"
Xpath_Card_Number_Characters_are_not_allowed = "xpath://*[starts-with(@class,'row uniform')]//label[contains(text(),'Characters are not allowed') and @id='message1']"
Xpath_Card_Number_Special_Characters_are_not_allowed = "xpath://*[starts-with(@class,'row uniform')]//label[contains(text(),'Special characters are not allowed') and @id='message1']"
Xpath_Expiration_Month = "xpath://select[@id='month' and @name='month']"
Xpath_Expiration_Year = "xpath://select[@id='year' and @name='year']"
Xpath_CVV_CODE = "xpath://input[@id='cvv_code' and @name='cvv_code']"
Xpath_CVV_Code_Field_must_not_be_blank = "xpath://*[starts-with(@class,'row uniform')]//label[contains(text(),'Field must not be blank') and @id='message2']"
Xpath_CVV_Code_Characters_are_not_allowed = "xpath://*[starts-with(@class,'row uniform')]//label[contains(text(),'Characters are not allowed') and @id='message2']"
Xpath_CVV_Code_Special_Characters_are_not_allowed = "xpath://*[starts-with(@class,'row uniform')]//label[contains(text(),'Special characters are not allowed') and @id='message2']"
Xpath_Pay_Now_with_Price_button = "xpath://body/section[@id='three']/div[1]/form[1]/div[2]/div[1]/ul[1]/li[1]/input[1]"
Alert_text_for_Card_Number = "Check card number is 16 digits!"
Alert_text_for_ex_mon_year = "Please select an item in the list."
Xpath_for_VISA_Image = "xpath://body/section[@id='three']/div[1]/form[1]/div[2]/div[1]/div[2]/img[1]"
Xpath_for_Discover_Image = "xpath://body/section[@id='three']/div[1]/form[1]/div[2]/div[1]/div[2]/img[4]"
Text_for_Payment_Process = "Payment Process"
Xpath_Product_Price = "xpath://h3[contains(text(),'Price: $20')]"
Xpath_Product_Image = "xpath://body/section[@id='three']/div[1]/form[1]/div[1]/div[1]/p[1]/img[1]"
