Feature: Tab Public Catalogs
    As a Digitall Experiences user
    I want to create, view and delete public catalogs

Background: Setup
    Given I have logged in to the Digitall Experiences website
    And I am on the catalogs page

Scenario: Create public catalog        
    When I click on the "Añadir Catalogo Publico" button
    And I enter the required fields as show below
    |Nombre:            | Mi Catalogo Publico     |
    |Descripcion:       | Este Es Mi Catalogo     |
    And I click button add catalog
    Then the confirmation screen is displayed

Scenario: View public catalog      
    When I click on the catalog "Mi Catalogo Publico"
    Then I will see catalog name "Mi Catalogo Publico"
  
Scenario: Delete public catalog        
    When I click on the Eliminar button from "Mi Catalogo Publico"
    And I confirm the delete action 
    Then the catalog "Mi Catalogo Publico" will no longer be on the list