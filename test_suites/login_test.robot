*** Settings ***
Resource    ../resources/test_data.robot
Resource    ../page_objects_&_keywords/login_modal_objects.robot


*** Test Cases ***
Login Test with valid crediantials
    Open_Web_browser    ${Production}
    Click on Login/Signup button
    Click on email option
    Enter email id      ${UserName}
    Click on next button
    Enter Vaild Password in password field
    Click login button after entering password
    Verify the notification for Successfully login
    Close_the_browser
Login Test with invalid credentials
    Open_Web_browser    ${Production}
    Click on Login/Signup button
    click on email option
    Enter email id      ${UserName}
    Click on next button
    Enter Invalid Password in password field
    Click login button after entering password
    Invalid Email/Password slim notification
    Close Login/Signup Modal
#Login Test with OTP   --- Removing this as the all the mobile number has reached the Maximum limit
#    [Tags]      Login Test       Sanity
#    Click on Login/Signup button
#    Click on Mobile Login Option
#    Enter Mobile number in mobile field
#    Click on next button
#    OTP notification should be visible
#    Close Login/Signup Modal
Resend confirmation Test
    Click on Login/Signup button
    Click on email option
    Enter email id      invalid@yopmail.com
    Click on Resend confirmation links
    Click on Resend confirmation button
    Confirmation mail should be visible
Forgot password Test
    Click on Login/Signup button
    Click on email option
    Enter email id    ${UserName}
    Click on Forgot password link from the login popup
    Click on Forget password button from login popup
    Forgot password notification should be visible      test@yopmail.com