Feature: Tab Regular View
    As a Digitall Experiences user
    I want to create, see and delete Regular Views


@login @goToCatalogs @createCatalog @createPoll @deleteCatalog
Scenario: Create Initial View
    When I click button to add view
    And I enter the required fields to create regular view as shown below
    |Titulo:            | Mi Vista Regular       |
    |Tipo:              | Regular                |
    And I click button add view
    Then the confirmation view created " Vista creada con éxito " screen is displayed

