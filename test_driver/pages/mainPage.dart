
import 'package:flutter_driver/flutter_driver.dart';
import 'package:screenshots/screenshots.dart';



class mainPage {


  final buttonFinderback = find.byValueKey('backButton');



  FlutterDriver _driver ;


  //Constructor
  mainPage(FlutterDriver driver) {
    this._driver = driver;
  }

  Future<void> back() async {


    //String password= await readdata.read();   var_name  var_password

    final config = Config();


    await screenshot(_driver, config, "main page screen");
    await _driver.tap(buttonFinderback);


  }

// prints "Print me to console"
}


