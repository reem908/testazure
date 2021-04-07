// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'pages/Login_page.dart';
import 'pages/signup.dart';
import 'pages/forgetpassword.dart';
import 'pages/mainPage.dart';


void main() {
  group('cb_mobile', () {
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.


    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });
    test("LoginToApp-success Scenario", () async {
      //  for(int i=0;i<=10;i++){
      Login_page login = Login_page(driver);
      await login.login();


    });
    test("Signup-success Scenario", () async{
      Login_page login = Login_page(driver);
      await login.signup();


      signup signupuser = new signup(driver);
      signupuser.signupuser();


    });


    test("Forgetpassword-success Scenario", () async{

      Login_page login = Login_page(driver);
      await login.forgetpassword();

      forgetpassword forget = new forgetpassword(driver);
      forget.forgetpassworduser();
      await login.login();
    });

    //------- Login fail scenarios

   /** test("LoginToApp-invalid username", () async {
      //  for(int i=0;i<=10;i++){
      Login_page login = Login_page(driver);
      await login.login();


    });

    test("LoginToApp-invalid password", () async {
      //  for(int i=0;i<=10;i++){
      Login_page login = Login_page(driver);
      await login.login();


    });


    test("LoginToApp-username field is empty", () async {
      //  for(int i=0;i<=10;i++){
      Login_page login = Login_page(driver);
      await login.login();


    });
    test("LoginToApp-password field is empty", () async {
      //  for(int i=0;i<=10;i++){
      Login_page login = Login_page(driver);
      await login.login();


    });

**/
    //*********************forget password  decline scenario
   /** test("Forgetpassword-old password is invalid", () async{
      Login_page login = Login_page(driver);
      await login.forgetpassword();

      forgetpassword forget = new forgetpassword(driver);
      forget.forgetpassworduser();


    });


    test("Forgetpassword-newpassword is not match", () async{

      Login_page login = Login_page(driver);
      await login.forgetpassword();

      forgetpassword forget = new forgetpassword(driver);
      forget.forgetpassworduser();


    });

    test("Forgetpassword-newpassword field is empty", () async{

      Login_page login = Login_page(driver);
      await login.forgetpassword();

      forgetpassword forget = new forgetpassword(driver);
      forget.forgetpassworduser();


    });

    test("Forgetpassword-newpassword is weak", () async{

      Login_page login = Login_page(driver);
      await login.forgetpassword();

      forgetpassword forget = new forgetpassword(driver);
      forget.forgetpassworduser();


    });
**/

    //--------------- Fail scenario--------------------------------------------

/**
    test("Signup -  invalid QID", ()async {
      Login_page login = Login_page(driver);
      await login.signup();


      signup signupuser = new signup(driver);
      signupuser.signupuser();

    });

    test("Signup -  invalid mobile no", () async{
      Login_page login = Login_page(driver);
      await login.signup();


      signup signupuser = new signup(driver);
      signupuser.signupuser();


    });
    test("Signup -  mobile no is empty", () async{
      Login_page login = Login_page(driver);
      await login.signup();


      signup signupuser = new signup(driver);
      signupuser.signupuser();

    });
    test("Signup -  QID is empty", () async{
      Login_page login = Login_page(driver);
      await login.signup();


      signup signupuser = new signup(driver);
      signupuser.signupuser();


    });



**/



    //------------other scenario-----------------------------------------------------------
   test("requestForTransfer", () {});
    /** test("requestLedgerClosed", () {});
    test("requestLedgerCurrent", () {});
    test("requestLedgerData", () {});
    test("requestPathFind", () {});
    test("requestPing", () {});
    test("requestRipplePathFind", () {});

    //TODO complete submit, sign, ...
    test("requestTransaction", () {});
    test("requestTransactionEntry", () {});
    test("requestTransactionHistory", () {}); **/
  });
}
