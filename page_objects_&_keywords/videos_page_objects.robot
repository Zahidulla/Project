*** Settings ***
Resource    ../resources/common.robot
Resource    ../resources/test_data.robot

*** Variables ***
${VideospageTitle}      //div[@class="yottie-widget-header-inner"]
${EnglishVideosTab}     //a[text()='StoryWeaver English']
${EnglishVideosCard}      (//span[@class="yottie-widget-video-preview-thumbnail"])[1]
*** Keywords ***
Videos title should be visible
    Sleep    5s
    Element Should Be Visible    ${VideospageTitle}
Videos should appear in the english tab
    Wait Until Element Is Visible    ${EnglishVideosCard}     timeout=15s
Click on Other languages video tab
    [Arguments]     ${TabLanguage}
    Click Element    //a[text()='StoryWeaver ${TabLanguage}']
Verify videos should appear in the language tab
    [Arguments]     ${Videoscount}
    Wait Until Element Is Visible    (//span[@class="yottie-widget-video-preview-thumbnail"])[${Videoscount}*25]     timeout=15s