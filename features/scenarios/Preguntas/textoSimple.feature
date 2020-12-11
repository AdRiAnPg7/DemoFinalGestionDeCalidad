Feature: Tab Simple Question
    As a Digitall Experiences user
    I want to create, see and delete Simple Questions


@login @goToCatalogs @createCatalog @createPoll @createRegularView @deleteCatalog
Scenario: Create Simple Question
    When I click on arrow next to a view named "Mi Vista Regular"
    And I click button to add question
    And I enter the required fields to simple question as shown below
    |Título:            | Mi Pregunta Simple     |
    |Tipo:              | Texto Simple           |
    And I click button add question 
    Then the confirmation question created " Pregunta agregada correctamente! " screen is displayed
