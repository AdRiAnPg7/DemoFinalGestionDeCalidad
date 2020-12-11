Feature: Detalle Campaña
    As a Digitall Experiences user
    I want to review campaign polls

Background: 
  Given I have logged in to the Digitall Experiences website
  And I am on the campaigns page

Scenario: View Assigned Polls       
  Given I am on the campaigns page
  And a test campaign named "Prueba AMMC" exists
  When I click on "Prueba AMMC"
  Then I will be on the "Prueba AMMC" details page

Scenario: View Touch Point Poll        
   Given I am on the campaign details page for "Prueba AMMC"
   When I click on the letter icon next to a Touch Point poll named "TP Publica"
   Then I will open a window with a preview of the "TP Publica" poll views

Scenario: View Mystery Shopper Poll        
  Given I am on the campaign details page for "Prueba AMMC"
  When I click on a Mystery Shopper poll named "MS Publica"
  Then I will see the Mystery Shopper "MS Publica" poll's details on the center of the page
