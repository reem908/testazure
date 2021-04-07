

import 'package:flutter_driver/flutter_driver.dart';

import 'package:screenshots/screenshots.dart';
import 'dart:math';
import'../csvdata/Data.dart';
import 'package:test/test.dart';


class forgetpassword {

  final oldPasswordTextFinder = find.byValueKey('oldpassword');
  final newPasswordTextFinder = find.byValueKey('newPassword');
  final confirmTextFinder = find.byValueKey('confirmPassword');

  final buttonFindersubmit = find.byValueKey('forgetpasswordbutton');






  FlutterDriver _driver ;


  //Constructor
  forgetpassword(FlutterDriver driver) {
    this._driver = driver;
  }

  Future<void> forgetpassworduser() async {
    bool var_name = true;
    bool var_password= true;

    //String password= await readdata.read();   var_name  var_password



    Data forgetpassworddata = new Data();
    String oldpassword=forgetpassworddata.password().toString();

    await _driver.tap(oldPasswordTextFinder);

    await _driver.enterText(oldpassword);
    try {
      expect(await _driver.getText(oldPasswordTextFinder), oldpassword);
    }
    catch (e, s) {
      var_name=false;
    }
    print('username success entered'); // prints "Print me to console"


    String newpassword=forgetpassworddata.newpassword().toString();

    await _driver.tap(newPasswordTextFinder);
    await _driver.enterText(newpassword);
    try {
      expect(await _driver.getText(newPasswordTextFinder), newpassword);


    } catch (e, s) {
      var_password=false;
    }
    print("password reseted success"); // prints "Print me to console"
    //await Future.delayed(const Duration(seconds: 2), (){});

    await _driver.tap(confirmTextFinder);
    await _driver.enterText(newpassword);
    try {
      expect(await _driver.getText(confirmTextFinder), newpassword);


    } catch (e, s) {
      var_password=false;
    }
    print("password reseted success");

    final config = Config();


    await screenshot(_driver, config, "forgetPassword screen");

    await _driver.tap(buttonFindersubmit);
   // expect(((await _driver.getText(confirmTextFinder)), newpassword),completes);

    // buttonFindersignup , buttonFinderforgetpassword

    //await Future.delayed(const Duration(seconds: 2), (){});


  }

// prints "Print me to console"
}

