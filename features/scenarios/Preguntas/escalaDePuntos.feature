Feature: Tab Point Scale Question
    As a Digitall Experiences user
    I want to create, see and delete Point Scale Question


@login @goToCatalogs @createCatalog @createPoll @createRegularView @deleteCatalog
Scenario: Create Point Scale Question
    When I click on arrow next to a view named "Mi Vista Regular"
    And I click button to add question
    And I enter the required fields to point scale question as shown below
    |Título:            | Mi Escala de Puntos    |
    |Tipo:              | Escala de Puntos       |
    |Valor mínimo:      | 1                      |
    |Valor máximo:      | 10                     |
    And I click button add question 
    Then the confirmation question created " Pregunta agregada correctamente! " screen is displayed
