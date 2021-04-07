
import 'package:flutter_driver/flutter_driver.dart';
import 'package:screenshots/screenshots.dart';
import 'dart:math';
import'../csvdata/Data.dart';

import 'package:test/test.dart';

import 'mainPage.dart';


class Login_page {

  final usernameTextFinder = find.byValueKey('username');
  final passwordTextFinder = find.byValueKey('password');
  final buttonFinderlogin = find.byValueKey('loginButton');
  final buttonFindersignup = find.byValueKey('signupButton');
  final buttonFinderforgetpassword = find.byValueKey('forgetpasswordButton');



  FlutterDriver _driver ;


  //Constructor
  Login_page(FlutterDriver driver) {
    this._driver = driver;
  }

  Future<void> login() async {
    bool var_name = true;
    bool var_password= true;

    //String password= await readdata.read();   var_name  var_password

Data usernames = new Data();

String users=usernames.username().toString();
    await _driver.tap(usernameTextFinder);

    await _driver.enterText(users);
    try {
      expect(await _driver.getText(usernameTextFinder), users);
    }
   catch (e, s) {
  var_name=false;
  }
    print('username success entered'); // prints "Print me to console"


  //  await Future.delayed(const Duration(seconds: 2), (){});
    await _driver.tap(passwordTextFinder);

    String password=usernames.password().toString();

    await _driver.enterText(password);
    try {
      expect(await _driver.getText(passwordTextFinder), password);


    } catch (e, s) {
      var_password=false;
    }
    print("password print success"); // prints "Print me to console"
    await Future.delayed(const Duration(seconds: 2), (){});
    final config = Config();


    await screenshot(_driver, config, "login screen");
   // await Future.delayed(const Duration(seconds: 5), (){});

    if(var_name=true)
      if(var_password=true)
        await _driver.tap(buttonFinderlogin);
    // buttonFindersignup , buttonFinderforgetpassword


    mainPage back = new mainPage(_driver);

      back.back();


          }





//*********************************************

  Future<void> signup() async {

    //String password= await readdata.read();   var_name  var_password




    await _driver.tap(buttonFindersignup);



    final config = Config();


    await screenshot(_driver, config, "signup screen");


      //  , buttonFinderforgetpassword


      }

  Future<void> forgetpassword() async {

    //String password= await readdata.read();   var_name  var_password




    await _driver.tap(buttonFinderforgetpassword);



    final config = Config();


    await screenshot(_driver, config, "forgetpassword screen");


    //  ,


  }

    // prints "Print me to console"
  }


