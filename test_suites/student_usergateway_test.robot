*** Settings ***
Resource    ../resources/test_data.robot
Resource    ../page_objects_&_keywords/read_page_objects.robot
Resource    ../page_objects_&_keywords/unsigned_gateway_objects.robot
Resource    ../page_objects_&_keywords/storyfinder_objects.robot
Resource    ../page_objects_&_keywords/login_modal_objects.robot
Resource    ../page_objects_&_keywords/student_gateway_objects.robot

*** Test Cases ***
Test Setup
    Open_Web_browser    ${Production}
Login as a student user
    Login   ${StudentUserName}
Verify studentgateway should load
    [Tags]      Student-Gateway Test      Sanity
    ${CurrentUrl}=      Get Location
    Should Be Equal As Strings    "${CurrentUrl}"    "https://storyweaver.org.in/en/student"
Test for Banners from Student gateway
    Banners link should be present
    StoryFinder Banner should be visible for an Student user
Test for StoryFinder banner from Student Gateway
    StoryFinder Modal should appear when clicked on StoryFinder banner
    Default values should appear in filters of StoryFinder modal
    Stories carousel should appear when clicked on Find A Book button with default values
    Click close button
Test for Side bar from Student gateway
    Verify side bar should have User name and read count image
    Verify all the options from SideBar should be visible
    Verify that HandpickeOption should be highlighted when user is on Student homepage
Test for engagement content should be visible in side bar
    Verify the engagement content should be visible
Test for all sections in Student Usergateway should be visible
    Verify trending this week title for student usergateway
    Books in Trending this week should be visible
    Verify Spotlight cards section should be visible in Student gateway
    Verify looking for books tabs for Student user
    Verify the books should be visible in Looking for books section
    Verify Popular Langauges section should be visible from Student gateway
    Verify langauge search section should be visible
Test for language search from Student user gateway
    Enter text in langauge serach field
    Suggestions should be visible upon text input
Teardown
    Close_the_browser