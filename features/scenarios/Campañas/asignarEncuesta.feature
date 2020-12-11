Feature: Asignar Encuesta
    In order to run a campaign
    As a campaign manager
    I want to assign polls to a campaign

Background: Campaign details page
  Given I have logged in to the Digitall Experiences website
  And I am on the campaigns page
  And I am on the campaign details page for "Prueba AMMC"

Scenario: Assign Touch Point Poll        
  Given I am on the "Asignar Encuestas" popup window
  When I enter the assignment details as show below
	|Nombre de Asignacion:      | AsignacionTPPrueba  |
  |Inicio:                    | 11/11/2020          |	
  |Conclusión: 	              | 12/12/2020          |
  And I select a public poll named "Encuesta TP Publica"
  And I click on the create assignment button
  Then I will see a new poll named "AsignacionTPPrueba" on the list

Scenario: Assign Mystery Poll        
  Given I am on the "Asignar Encuestas" popup window
  When I enter the assignment details as show below
	|Nombre de Asignacion:      | AsignacionMSPrueba  |
  |Inicio:                  | 11/11/2020          |	
  |Conclusión: 	            | 12/12/2020          |
  And I select a public poll named "Encuesta MS Publica"
  And I click on the create assignment button
  Then I will see a new poll named "AsignacionMSPrueba" on the list