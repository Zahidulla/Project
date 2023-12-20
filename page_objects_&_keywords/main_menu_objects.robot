*** Settings ***
Resource    ../resources/common.robot
Resource    ../resources/test_data.robot
*** Variables ***
${ReadOptionMainMenu}       //span[text()='Read']
${AllBooksOption}       //span[text()='All Books']
${TranslateOptionMainMenu}      //span[text()='Translate']
${VideoOption}           //span[text()='Videos']
${ResourcesOptionMainMenu}           //span[text()='Resources']
${STEMOption}       //div[text()='STEM Literacy Programme']
${FLPOption}        //div[text()='Foundational Literacy Programme']
${ECEOption}        //div[text()='Early Learning Resources']
${RPOption}        //div[text()='Reading Programme']
${BookListOption}        //div[text()='Book Lists']
${EnglishOption}        //span[text()='English']
*** Keywords ***
Select Read page from read dropdown
    Mouse Over    ${ReadOptionMainMenu}
    Click Element    ${ReadOptionMainMenu}
    Sleep    2s
    Click Element    ${AllBooksOption}
Click on Translate from main menu
    Click Element    ${TranslateOptionMainMenu}
Select Videos page from read dropdown
    Mouse Over    ${ReadOptionMainMenu}
    Click Element    ${ReadOptionMainMenu}
    Sleep    2s
    Click Element    ${VideoOption}
Select stem option from main menu
    Mouse Over    ${ResourcesOptionMainMenu}
    Click Element    ${ResourcesOptionMainMenu}
    Sleep    2s
    Click Element    ${STEMOption}
Click on language option from menu
    [Arguments]     ${LanguageOption}
    Click Element    //span[text()='${LanguageOption}']

Select FLP option from main menu
    Mouse Over    ${ResourcesOptionMainMenu}
    Click Element    ${ResourcesOptionMainMenu}
    Sleep    2s
    Click Element    ${FLPOption}
Select ECE option from main menu
    Mouse Over    ${ResourcesOptionMainMenu}
    Click Element    ${ResourcesOptionMainMenu}
    Sleep    2s
    Click Element    ${ECEOption}
Select RP option from main menu
    Mouse Over    ${ResourcesOptionMainMenu}
    Click Element    ${ResourcesOptionMainMenu}
    Sleep    2s
    Click Element    ${RPOption}
Select Booklist option from main menu
    Mouse Over    ${ResourcesOptionMainMenu}
    Click Element    ${ResourcesOptionMainMenu}
    Sleep    2s
    Click Element    ${BookListOption}