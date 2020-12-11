Feature:  Touch Point Polls
    As a campaign manager
    I want to review Touch Point polls

Background: Campaign details page
  Given I have logged in to the Digitall Experiences website
  And I am on the campaigns page
  And I am on the campaign details page for "Prueba AMMC"


Scenario: Estructura
    Given I have a poll assignment named "TP Publica"
    When I click on a Touch Point poll named "TP Publica"
    Then a graph named "Estructura" is displayed

Scenario: Lista de Distribucion
    Given I have a poll assignment named "TP Publica"
    And I click on a Touch Point poll named "TP Publica"
    When I click the "Listas de Distribución" tab
    And I click the create list button
    And I enter "Test DL" in the name field
    And I enter the required user fields as show below
	    |Nombre:     | John           |
        |Teléfono:   | 777            |
        |Email:      | john@mail.com  |
        |CI:         | 100200         |
    And I click the create button
 
#Scenario: Eliminar
