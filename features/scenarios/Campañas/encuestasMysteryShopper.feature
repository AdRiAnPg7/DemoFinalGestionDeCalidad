Feature: Mystery Shopper Polls
    As a campaign manager
    I want to review Mystery Shopper polls

Background: Campaign details page
  Given I have logged in to the Digitall Experiences website
  And I am on the campaigns page
  And I am on the campaign details page for "Prueba AMMC"

Scenario: Assign inspector
    Given I have a poll assignment named "MS Publica"
    And I click on a Mystery Shopper poll named "MS Publica"
    When I click the inspector icon
    And I click on the add inspector button
    And I enter the required inspector fields as show below
	    |Cantidad:       | 10  |
        |Fechas para inspeccionar: | 11/12/2020 - 12/01/2021 |
    And I select the "test inspector" from the inspector list
    And I click the assign inspector button
    Then an inspector named "test inspector" exists in the inspector list

Scenario: Eliminar
    Given I have a poll assignment named "MS Publica"
    And I click on a Mystery Shopper poll named "MS Publica"
    And I click the inspector icon
    And an inspector named "test inspector" exists in the inspector list
    When I click on the delete inspector button for "test inspector"
    Then "test inspector" is no longer on the inspector list
