Feature: Tab Poll
    As a Digitall Experiences user
    I want to create, view and delete polls

Background: Setup poll
    When I click on the catalog "Mi Catalogo Test"

@login @goToCatalogs @createCatalog 
Scenario: Create poll
    When I click button to add poll
    And I enter the required fields to create poll as show below
    |Nombre:            | Mi Encuesta            |
    |Descripción:       | Esta Es Mi Encuesta    |
    |Tipo:              | Ninguno                |
    |Categoría:         | Mi Categoria           |
    And I click button add poll
    Then the confirmation " Encuesta creada con éxito " screen is displayed

@login @goToCatalogs
Scenario: View poll      
    When I click on poll "Mi Encuesta"
    Then I will see poll name "Mi Encuesta"

 @login @goToCatalogs @deleteCatalog
Scenario: Delete poll
    When I click on poll "Mi Encuesta"
    And I click on the "Eliminar" poll button
    And I confirm the delete poll action
    Then the poll "Mi Encuesta" will no longer be on the list

