
import 'package:flutter_driver/flutter_driver.dart';
import 'package:screenshots/screenshots.dart';

import'../csvdata/Data.dart';
import 'package:test/test.dart';


class signup {

  final QIDTextFinder = find.byValueKey('QIDvalue');
  final mobileNOTextFinder = find.byValueKey('mobileNo');

  final buttonFindersignup = find.byValueKey('signupButton');




  FlutterDriver _driver ;


  //Constructor
  signup(FlutterDriver driver) {
    this._driver = driver;
  }

  Future<void> signupuser() async {
    bool var_name = true;
    bool var_password= true;

    //String password= await readdata.read();   var_name  var_password

    Data signupdata = new Data();
    String QID=signupdata.QID().toString();
    await _driver.tap(QIDTextFinder);

    await _driver.enterText(QID);
    try {
      expect(await _driver.getText(mobileNOTextFinder), QID);
    }
    catch (e, s) {
      var_name=false;
    }
    print('username success entered'); // prints "Print me to console"


    String mobileNO=signupdata.mobileNO().toString();

    await _driver.tap(mobileNOTextFinder);
    await _driver.enterText(mobileNO);
    try {
      expect(await _driver.getText(mobileNOTextFinder), mobileNO);


    } catch (e, s) {
      var_password=false;
    }
    print("password print success"); // prints "Print me to console"
    //await Future.delayed(const Duration(seconds: 2), (){});
    final config = Config();


    await screenshot(_driver, config, "signup screen");

        await _driver.tap(buttonFindersignup);
      // buttonFindersignup , buttonFinderforgetpassword



  }

// prints "Print me to console"
}


