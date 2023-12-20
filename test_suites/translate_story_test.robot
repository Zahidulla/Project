*** Settings ***
Resource    ../resources/test_data.robot
Resource    ../page_objects_&_keywords/create_feature_objects.robot
Resource    ../page_objects_&_keywords/login_modal_objects.robot
Resource    ../page_objects_&_keywords/dashboard_objects.robot
Resource    ../page_objects_&_keywords/story_details_page_objects.robot
Resource    ../page_objects_&_keywords/translate_page_objects.robot
Resource    ../page_objects_&_keywords/main_menu_objects.robot
Resource    ../page_objects_&_keywords/user_dropdown_menu_objects.robot
*** Test Cases ***
Test Setup
    Open_Web_browser    ${Production}
Login
    Login   ${UserName}
    Sleep    3s
Test if the translate page is be opened
    Click on Translate from main menu
    Verify Trabslate page is opened
Test if the language is not selected and clicking on Translate
    Click on translate from Story card
    Slim notification without choosing language
    Clcik on offline translate button from story card
    Slim notification without choosing language
Test for selecting To and From language from Translate page
    Select 'From' language
    Search for Language
    Select the language from the dropdown to translate
    Select 'To' language from translate
Test for translating story when clicked on translate
    Click on translate from Story card
    Handle alert if any
    Translate editor should open
Test for entering Text in editor
    Enter Text in editor for translate page
    Click on next page from translate editor
Test for selecting reader orientation
    Select orientation from Translate editor
    Enter Text in editor for translate page
Test for adding duplicate page
    Click on duplicate page icon
Test for preview in translate page
    Click on preview from translate editor
    Verify preview should open
    Close preview
Test for filling the publish form and publishing the story
    Click on publish button
    Fill publish form from translate
    Scroll to publish button and click on it
    Click on publish button from Translates final publish form
Verify the ugc slim notification after submitting
    Verify the UGC slim notification after publishing
Test if the translate another story modal is opened in Read page
     Verify Translate another story modal is appearing
     Click close button
Verify publsihed story should appear in My Publsihed dashboard
    Click on UserName
    Click on Dashboard option from user name dropdown
    My published story tab should be visible
    Verify the publsihed story should appear in My publsihed tab      ${TranslateTitleText}
Test for editing Publsihed story from story details page
    Click on Story title link from My published tab     ${TranslateTitleText}
    Sleep    3s
    Edit story from story details page
    Click on save button
Test Teardown
    Close_the_browser