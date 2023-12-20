*** Settings ***
Resource    ../resources/test_data.robot
Resource    ../page_objects_&_keywords/create_feature_objects.robot
Resource    ../page_objects_&_keywords/login_modal_objects.robot
Resource    ../page_objects_&_keywords/image_page_objects.robot
Resource    ../page_objects_&_keywords/dashboard_objects.robot
Resource    ../page_objects_&_keywords/story_details_page_objects.robot
Resource    ../page_objects_&_keywords/user_dropdown_menu_objects.robot
*** Test Cases ***
Setup
        Open_Web_browser    ${IndividualImageURL}
Test for clicking on create option from individual image page
    Accept GDPR
    Click on create story button from individual image page
    Click on Login/Signup button from generic login signup(Appear when clicked on action button)
    Verify the Login/signup modal should visible
    Close Login/Signup Modal
Test for clicking on create option from main menu as an unsigned user
    Hover and click on create option from main menu
    Verify the Login/signup modal should visible
    Close Login/Signup Modal
Test for Login and opening create page
    Login   ${UserName}
    Hover and click on create option from main menu
    Verify create page opened
Test for filling the publish form
    Select language of Story in Publish Form
    Enter Story title in Publish Form
    Select level of Story in Publsih Form
    Click on start with words button in Publish Form
    Verify the Story title
Test for adding new page and add image and text in 3rd page
    Insert new page in the editor
    Add random image to reader
    Adding Text in Readers textbox
Test for selecting readers orientation
    Click on second page
    Select some orientation for the reader
    Add random image to reader
Test for adding textbox and adding text in it
    Add text box in the reader
    Enter Text in the text box
Test for adding Speech bubble and adding text in it
    Add Speech bubble
    Enter Text in Speech Bubble
Test for adding image in front cover page
    Click on Front cover page
    Add random image to reader
Test for previewing story
    Click on preview button from create
    Verify the preview
    Close preview
Test for filling final publish form
    Click on Publish button from Create editor
    Check for empty speech bubble or text box while publihsing  #To ensure continuity if any stale element error occurs while adding speech bubble and text box
    Click on done button
    Enter synopsis in final Publish form from create
    Select category from final Publish form from create
    Enter English story title in final Publsih form from create
    Click on publish button from final publish form from create
Verify the UGC published Notification
    Verify the UGC slim notification after publishing
Verify publsihed story should appear in My Publsihed dashboard
    Click on UserName
    Click on Dashboard option from user name dropdown
    My published story tab should be visible
    Verify the publsihed story should appear in My publsihed tab      ${StoryTitleText}
Test for editing Publsihed story from story details page
    Click on Story title link from My published tab     ${StoryTitleText}
    Sleep    3s
    Edit story from story details page
    Click on save button
Verify publsihed under edit notfication should appear
    Verify publsihed under edit notification
Tear Down
    Close_the_browser