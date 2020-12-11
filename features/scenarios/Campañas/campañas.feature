Feature: Tab Campañas
    As a Digitall Experiences user
    I want to create campaigns

Background: 
  Given I have logged in to the Digitall Experiences website
  And I am on the campaigns page

Scenario: Create campaign        
  When I click on the create campaign button
  And I will open the create campaign form
  And I enter the required campaign fields as show below
	  |Nombre de Campaña:       | Prueba AMMC Auto  |
    |Inicio de campaña:       | 11/11/2020        |	
    |Fin de campaña:          | 12/12/2020        |
  And I select the "UCB Prueba" from the companies list
  And I select attach the file "A.png"
  And I select the color white for colors
  And I click the create button
  Then a test campaign named "Prueba AMMC Auto" exists



Scenario: View campaign actions      
  When I click on the arrow next to a campaign named "Prueba AMMC"
  Then I will have the options to Edit, View, and Delete


# Scenario: Edit campaign        
#   Given I have clicked on the arrow next to a campaign
#   When I click on the "Editar Campaña" button
#   Then I will open the edit campaign form
  
# Scenario: Delete campaign        
#   Given I have clicked on the arrow next to a campaign
#   When I click on the "Eliminar" button
#   And I confirm the action
#   Then the campaign will no longer be on the list