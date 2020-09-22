var {Given} = require('cucumber');
var {When} = require('cucumber');
var {Then} = require('cucumber');
var {expect} = require('chai');

Given('I go to losestudiantes home screen', () => {
  browser.url('/');
  if($('button=Cerrar').isDisplayed()) {
    $('button=Cerrar').click();
  }
});

When('I press ok', ()=>
{
  $('button=Ok').waitForExist(5000);
  $('button=Ok').waitForDisplayed(5000);
  $('button=Ok').click();
}
);

When('I open the login screen', () => {
  $('button=Ingresar').waitForExist(5000);
  $('button=Ingresar').waitForDisplayed(5000);
  $('button=Ingresar').click();
});

When('I open the register screen', () => {
  $('button=Ingresar').waitForExist(5000);
  $('button=Ingresar').waitForDisplayed(5000);
  $('button=Ingresar').click();
});

When('I fill a wrong email and password', () => {
  var cajaLogIn = $('.cajaLogIn');

  var mailInput = cajaLogIn.$('input[name="correo"]');
  mailInput.click();
  mailInput.setValue('wrongemail@example.com');

  var passwordInput = cajaLogIn.$('input[name="password"]');
  passwordInput.click();
  passwordInput.setValue('123467891');
});

When('I try to login', () => {
  var cajaLogIn = $('.cajaLogIn');
  cajaLogIn.$('button=Ingresar').click();
});

Then('I expect to not be able to login', () => {
  $('.aviso.alert.alert-danger').waitForDisplayed(5000);
});

When(/^I fill with (.*) and (.*)$/ , (email, password) => {
  var cajaLogIn = $('.cajaLogIn');

 var mailInput = cajaLogIn.$('input[name="correo"]');
 mailInput.click();
 mailInput.keys(email);

 var passwordInput = cajaLogIn.$('input[name="password"]');
 passwordInput.click();
 passwordInput.keys(password)
});

When(/^I fill the register with (.*) and (.*) and (.*) and (.*) and (.*) and (.*) and (.*) and (.*) and (.*)$/ , (name, lastname, email, password, u ,major, mestria, doble, acepta) => {
  var cajaSignUp = $('.cajaSignUp');

 var nombreInput = cajaSignUp.$('input[name="nombre"]');
 nombreInput.click();
 nombreInput.keys(name);

 var apellidoInput = cajaSignUp.$('input[name="apellido"]');
 apellidoInput.click();
 apellidoInput.keys(lastname);

 var mailInput = cajaSignUp.$('input[name="correo"]');
 mailInput.click();
 mailInput.keys(email);

 var passwordInput = cajaSignUp.$('input[name="password"]');
 passwordInput.click();
 passwordInput.keys(password)

 var unis = cajaSignUp.$('select[name="idUniversidad"]');
 
 if(u!='')
 {
  unis.click(); 
   var uni = cajaSignUp.$('option='+u);
 uni.click();
  }
 

 var progs = cajaSignUp.$('select[name="idPrograma"]');
 
 if(major!=''){
  progs.click(); 
 var prog = cajaSignUp.$('option='+major);
 prog.click();
 }

 var check = cajaSignUp.$('input[name="acepta"]');
 if( acepta=='si')
 {
   check.click();
 }

});

When('I try to register', () => {
  var caSingUP = $('.cajaSignUp');
  caSingUP.$('button=Registrarse').click();
});


Then('I expect to see {string}', error => {
 $('.aviso.alert.alert-danger').waitForDisplayed(5000);
 var alertText = browser.$('.aviso.alert.alert-danger').getText();
 expect(alertText).to.include(error);
});

Then('I expect to login', () => {
   $('button[id="cuenta"').waitForExist(5000);
   var boton =  $('a=Salir').getText();
  console.log(boton);
  expect(boton).is.not.null;
});
