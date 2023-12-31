*** Settings ***
Resource    ../resources/test_data.robot
Resource    ../page_objects_&_keywords/read_page_objects.robot
Resource    ../page_objects_&_keywords/unsigned_gateway_objects.robot
Resource    ../page_objects_&_keywords/storyfinder_objects.robot

*** Test Cases ***
Test Setup
    Open_Web_browser    ${Production}
Test for Banners
    Close the PTR Notification if visible
    Banners link should be present
    Select second banner
    StoryFinder Banner should be visible for an unsigned user
Test for StoryFinder banner
    StoryFinder Modal should appear when clicked on StoryFinder banner
    Default values should appear in filters of StoryFinder modal
    Stories carousel should appear when clicked on Find A Book button with default values
    Click close button
Test for all sections in Unsigned Usergateway should be visible
    Verify trending this week title for Unsigned usergateway
    Books in Trending this week should be visible
    Verify level section should be visible
    Verify Looking for books section Title
    Verify looking for books tabs for unsigned user
    Verify the books should be visible in Looking for books section
    Verify Popular Langauges section should be visible
    Verify Spotlight cards section should be visible
    Verify StoryWeaver & you section should be visible
    Verify the resource carousel in homepage
    Veify blogs section should be visible
    Verify Social icons should be visible
    Verify langauge search section should be visible
Test for language search from unsigned user gateway
    Enter text in langauge serach field
    Suggestions should be visible upon text input
    Searching language from the suggestions
Verify the searched language filter should be applied in read page
    Filter should be visible
Test Teardown
    Close_the_browser