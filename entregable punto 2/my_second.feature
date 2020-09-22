
Feature: Mostrar informacion los paraderos dado un nombre 


	Scenario: Como usuario yo quiero ver el detalle de las principales rutas frecidas por el primer paradero en la pantalla todos
	Gives I press "Paraderos"
	#button to remove the splash screen
	When I press "Paraderos"
	And I wait
	And I press "Paraderos"	
	And I press "C"
	Then I should see "7"
	And I should see "B50"
	And I should see "C15"
	And I should see "c50"

Scenario: Como usuario yo quiero ver el detalle de las principales rutas frecidas por el primer paradero en la pantalla TRANSMILENIO
	Gives I press "Paraderos"
	#button to remove the splash screen
	When I press "Paraderos"
	And I press "TRANSMILENIO"
	And I press "C"
	Then I should see "7"
	And I should see "B50"
	And I should see "C15"
	And I should see "c50"

Scenario: Como usuario yo quiero ver el detalle de las principales rutas frecidas por el primer paradero en la pantalla SITP
	Gives I press "Paraderos"
	#button to remove the splash screen
	When I press "Paraderos"
	And I press "SITP"
	And I press "AC 100"
	Then I should see "107B"
	And I should see "270"
	And I should see "291"
	And I should see "341"


	








