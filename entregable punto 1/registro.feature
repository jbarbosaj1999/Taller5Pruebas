Feature: Login into losestudiantes
    As an user I want to authenticate myself within losestudiantes website in order to rate teachers


Scenario Outline: register failed with wrong inputs

  Given I go to losestudiantes home screen
    When I open the register screen
    And I fill the register with <name> and <lastname> and <email> and <password> and <u> and <major> and <mestria> and <doble> and <acepta>
    And I try to register
    Then I expect to see <error>

    Examples:
      |name   |lastname   | email            | password |u    |major    |mestria    |doble      |acepta       | error                    |
      |       |           |                  |          |     |         |           |           |             | "Ingresa tu correo"      |     
      |   unName    |           |                  |          |     |         |           |           |             | "Ingresa tu correo"      |
      |       |    unLastName       |                  |          |     |         |           |           |             | "Ingresa tu correo"      |
      |       |           |    unEmail              |          |     |         |           |           |             | "Ingresa un correo valido"      |
      |       |           |   unEmail@.com               |          |     |         |           |           |             | "Ingresa una contraseña"      |
      |       |           |    un.-,*12345678@hotmail.com              |          |     |         |           |           |             | "Ingresa una contraseña"      |
      |       |           |    unEmail@hotmail.com              |          |     |         |           |           |             | "Ingresa una contraseña"      |
      |       |           |                  |   123456789       |     |         |           |           |             | "Ingresa tu correo"      |
      |       |           |                  |          | Universidad Nacional    |         |           |           |             | "Ingresa tu correo"      |
      |       |           |                  |          |     |   Derecho      |           |           |             | "Ingresa tu correo"      |
      |       |           |                  |          |     |         |   si        |           |             | "Ingresa tu correo"      |
      |       |           |                  |          |     |         |           |   si        |             | "Ingresa tu correo"      | 
      |       |           |                  |          |     ||           |           |    si         | "Ingresa tu correo"      |              
      |   unName    |           |    unEmail              |          |     |         |           |           |             | "Ingresa un correo valido"      |
      |   unName    |           |    un.-,*12345678@hotmail.com              |          |     |         |           |           |             | "Ingresa una contraseña"      |
      |   unName    |           |    un.-,*12345678@hotmail.com              |          |     |         |           |           |             | "Ingresa una contraseña"      |
      |   unName    |           |    unEmail@hotmail.com              |          |     |         |           |           |             | "Ingresa una contraseña"      |
      |   unName    |           |                  |   123456789       |     |         |           |           |             | "Ingresa tu correo"      |
      |   unName    |           |                  |          | Universidad Nacional    |         |           |           |             | "Ingresa tu correo"      |
      |   unName    |           |                  |          |     |   Derecho      |           |           |             | "Ingresa tu correo"      |
      |   unName    |           |                  |          |     |         |   si        |           |             | "Ingresa tu correo"      |
      |   unName    |           |                  |          |     |         |           |   si        |             | "Ingresa tu correo"      | 
      |   unName    |           |                  |          |     ||           |           |    si         | "Ingresa tu correo"      | 
      |       |     unLastName      |    unEmail              |          |     |         |           |           |             | "Ingresa un correo valido"      |
      |       |     unLastName      |    unEmail              |          |     |         |           |           |             | "Ingresa un correo valido"      |
      |       |     unLastName      |   unEmail@.com               |          |     |         |           |           |             | "Ingresa una contraseña"      |
      |       |     unLastName      |    un.-,*12345678@hotmail.com              |          |     |         |           |           |             | "Ingresa una contraseña"      |
      |       |     unLastName      |    unEmail@hotmail.com              |          |     |         |           |           |             | "Ingresa una contraseña"      | 
      |       |     unLastName      |                  |   123456789       |     |         |           |           |             | "Ingresa tu correo"      |
      |       |     unLastName      |                  |          | Universidad Nacional    |         |           |           |             | "Ingresa tu correo"      |
      |       |     unLastName      |                  |          |     |   Derecho      |           |           |             | "Ingresa tu correo"      |
      |       |     unLastName      |                  |          |     |         |   si        |           |             | "Ingresa tu correo"      |
      |       |     unLastName      |                  |          |     |         |           |   si        |             | "Ingresa tu correo"      | 
      |       |     unLastName      |                  |          |     ||           |           |    si         | "Ingresa tu correo"      |   
      |   unName    |    unLastName       |    unEmail              |          |     |         |           |           |             | "Ingresa un correo valido"      |
      |   unName    |    unLastName       |    unEmail              |          |     |         |           |           |             | "Ingresa un correo valido"      |
      |   unName    |    unLastName       |   unEmail@.com               |          |     |         |           |           |             | "Ingresa una contraseña"      |
      |   unName    |    unLastName       |    un.-,*12345678@hotmail.com              |          |     |         |           |           |             | "Ingresa una contraseña"      |
      |   unName    |    unLastName       |    unEmail@hotmail.com              |          |     |         |           |           |             | "Ingresa una contraseña"      |
      |   unName    |    unLastName       |                  |   123456789       |     |         |           |           |             | "Ingresa tu correo"      |
      |   unName    |    unLastName       |                  |          | Universidad Nacional    |         |           |           |             | "Ingresa tu correo"      |
      |   unName    |    unLastName       |                  |          |     |   Derecho      |           |           |             | "Ingresa tu correo"      |
      |   unName    |    unLastName       |                  |          |     |         |   si        |           |             | "Ingresa tu correo"      |
      |   unName    |    unLastName       |                  |          |     |         |           |   si        |             | "Ingresa tu correo"      | 
      |   unName    |    unLastName       |                  |          |||           |           |    si         | "Ingresa tu correo"      |
      |   unName    |    unLastName       |    unEmail                   | 123456789         | Universidad Nacional    |   Derecho      |           |           |             | "Ingresa un correo valido"      |
      |   unName    |    unLastName       |    unEmail                   |  123456789        | Universidad Nacional    |   Derecho      |           |           |             | "Ingresa un correo valido"      |
      |   unName    |    unLastName       |   unEmail@.com               | 123456789         | Universidad Nacional    | Derecho        |           |           |             | "Debes aceptar los términos y condiciones"      |
      |   unName    |    unLastName       |    un.-,*12345678@hotmail.com|  123456789        |Universidad Nacional     |  Derecho       |           |           |             | "Debes aceptar los términos y condiciones"      |
      |   unName    |    unLastName       |    unEmail@hotmail.com       |   123456789       | Universidad Nacional    |  Derecho       |           |           |             | "Debes aceptar los términos y condiciones"      |
      |   unName    |    unLastName       |    unEmail                   | 12345         | Universidad Nacional    |   Derecho      |           |           |             | "Ingresa un correo valido"      |
      |   unName    |    unLastName       |    unEmail                   |  12345       | Universidad Nacional    |   Derecho      |           |           |             | "Ingresa un correo valido"      |
      |   unName    |    unLastName       |   unEmail@.com               | 12345         | Universidad Nacional    | Derecho        |           |           |             | "La contraseña debe ser al menos de 8 caracteres"      |
      |   unName    |    unLastName       |    un.-,*12345678@hotmail.com|  12345        |Universidad Nacional     |  Derecho       |           |           |             | "La contraseña debe ser al menos de 8 caracteres"      |
      |   unName    |    unLastName       |    unEmail@hotmail.com       |   12345       | Universidad Nacional    |  Derecho       |           |           |             | "La contraseña debe ser al menos de 8 caracteres"      |    

Scenario:  register success

#Cambiar el correo en cada intento
  Given I go to losestudiantes home screen
    When I open the register screen
    And I fill the register with unName  and unLastName and unEmail@.com and 123456789 and Universidad Nacional and Derecho and  and  and si
    And I try to register
    And I press ok
    Then I expect to login
     



        
