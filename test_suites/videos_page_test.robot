*** Settings ***
Resource    ../page_objects_&_keywords/main_menu_objects.robot
Resource    ../page_objects_&_keywords/videos_page_objects.robot
*** Test Cases ***
Test Setup
    Open_Web_browser    ${Production}
Test for Opening videos page
   Select Videos page from read dropdown
   Videos title should be visible
   Videos should appear in the english tab
Test for Hindi languages videos tab
    Click on Other languages video tab    Hindi
    Verify videos should appear in the language tab     1
Test for Marathi languages videos tab
    Click on Other languages video tab    Marathi
    Verify videos should appear in the language tab     2
Test for Kannada languages videos tab
    Click on Other languages video tab    Kannada
    Verify videos should appear in the language tab     3
Test Teardown
    Close_the_browser