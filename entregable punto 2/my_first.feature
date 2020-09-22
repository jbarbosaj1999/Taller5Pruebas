
Feature: Ver las rutas ofrecidas por transmilenio


	Scenario: Como usuario yo quiero ver el detalle de las principales rutas ofrecidas por transmilenio por pantalla defecto
	Gives I press "Rutas"
	#button to remove the splash screen
	When I press "Rutas"
	And I wait
	And I press "Rutas"	
	And I press "1"
	Then I should see "Portal El Dorado"
	And I should see "Modelia"

	Scenario: Como usuario yo quiero ver el detalle de las principales rutas ofrecidas por buses de transmilenio por tap
	Gives I press "Rutas"
	#button to remove the splash screen
	When I press "Rutas"
	And I press "TRANSMILENIO"
	And I press "1"
	Then I should see "Portal El Dorado"
	And I should see "Modelia"

	#Las opciones swipe fueron tomadas en cuenta pero no funcionaban como se esperaba. Se dejaron comentadas a modo de evicencia
	#Scenario: Como usuario yo quiero ver el detalle de las principales rutas ofrecidas por buses urbanos por swipe
	#Gives I wait
	#And I press "Rutas"	
	#button to remove the splash screen	
	#When I wait
	#And I press "Rutas"
	#And I swipe right
	#And I wait
	#And I press "Rutas"		
	#And I press "4"
	#Then I should see "Br. Bella Vista Occidental"
	#And I should see text containing "Almacenes"

Scenario: Como usuario yo quiero ver el detalle de las principales rutas ofrecidas por buses urbanos por tap
	Gives I press "Rutas"
	#button to remove the splash screen
	When I press "Rutas"
	And I press "URBANO"
	And I press "4"
	Then I should see "Br. Bella Vista Occidental"
	And I should see text containing "Almacenes"


Scenario: Como usuario yo quiero ver el detalle de las principales rutas ofrecidas por buses complementarios por tap
	Gives I press "Rutas"
	#button to remove the splash screen
	When I press "Rutas"
	And I press "COMPLEMENTARIO"
	And I press "2-6"
	Then I should see "Br. Canaima"
	And I should see "Br. La Floresta"



Scenario: Como usuario yo quiero ver el detalle de las principales rutas ofrecidas por buses Especiales por tap
	Gives I press "Rutas"
	#button to remove the splash screen
	When I press "Rutas"
	And I press "COMPLEMENTARIO"
	And I press "ESPECIAL"
	And I press "T07"
	Then I should see "Carrera 6"
	And I should see "Carrera 2"

Scenario: Como usuario yo quiero ver el detalle de las principales rutas ofrecidas por buses Alimentadores por tap
	Gives I press "Rutas"
	#button to remove the splash screen
	When I press "Rutas"
	And I press "COMPLEMENTARIO"
	And I press "ESPECIAL"
	And I press "ALIMENTADOR"
	And I press "1-3"
	Then I should see "Portal de la 80"
	And I should see "Cl 74B"








