
//import 'package:flutter/services.dart' show rootBundle;



import 'package:csv/csv.dart';
import 'dart:io';
//import '../../lib/read.dart';


class Data {


  List<List<dynamic>> data = [];

  // This function is triggered when the floating button is pressed
  String  username()  {
  //String loadCSV()
    // {
  //  final rawData = "assets/kindacode.csv";
    File file = File("assets/kindacode.csv");
    var lines = file.readAsLinesSync();
    //List<List<dynamic>> listData = CsvToListConverter().convert(lines);
    //var lst = new List(3);
   /** var reem;
    var linesb = file.writeAsStringSync(reem);
    **/

    // data = listData;
    var userlist = lines[1].toString();

    List<String> result = userlist.split(',');




    print (result[0]);
    return result[0].toString();


  }


  String  password() {
    //String loadCSV()
    // {
    //  final rawData = "assets/kindacode.csv";
    File file = File("assets/kindacode.csv");
    var lines = file.readAsLinesSync();
    //List<List<dynamic>> listData = CsvToListConverter().convert(lines);
    //var lst = new List(3);

    // data = listData;
    var userlist = lines[1].toString();

    List<String> result = userlist.split(',');


    // String password =  data[0][0].toString();
    // String QID =  data[1][0].toString();
    print(result[1]);
    return result[1].toString();
  }


  String  QID() {
    //String loadCSV()
    // {
    //  final rawData = "assets/kindacode.csv";
    File file = File("assets/kindacode.csv");
    var lines = file.readAsLinesSync();
    //List<List<dynamic>> listData = CsvToListConverter().convert(lines);
    //var lst = new List(3);

    // data = listData;
    var userlist = lines[1].toString();

    List<String> result = userlist.split(',');


    // String password =  data[0][0].toString();
    // String QID =  data[1][0].toString();
    print(result[2]);
    return result[2].toString();
  }



  String  mobileNO() {
    //String loadCSV()
    // {
    //  final rawData = "assets/kindacode.csv";
    File file = File("assets/kindacode.csv");
    var lines = file.readAsLinesSync();
    //List<List<dynamic>> listData = CsvToListConverter().convert(lines);
    //var lst = new List(3);

    // data = listData;
    var userlist = lines[1].toString();

    List<String> result = userlist.split(',');


    // String password =  data[0][0].toString();
    // String QID =  data[1][0].toString();
    print(result[3]);
    return result[3].toString();
  }


  String  newpassword() {
    //String loadCSV()
    // {
    //  final rawData = "assets/kindacode.csv";
    File file = File("assets/kindacode.csv");
    var lines = file.readAsLinesSync();
    //List<List<dynamic>> listData = CsvToListConverter().convert(lines);
    //var lst = new List(3);

    // data = listData;
    var userlist = lines[1].toString();

    List<String> result = userlist.split(',');


    // String password =  data[0][0].toString();
    // String QID =  data[1][0].toString();
    print(result[4]);
    return result[4].toString();
  }

//write to CSV file
 /** String csv = const ListToCsvConverter().convert(yourListOfLists);
  /// Write to a file
  final directory = await getApplicationDocumentsDirectory();
  final pathOfTheFileToWrite = directory.path + "/myCsvFile.csv"
  File file = await File(pathOfTheFileToWrite);
  file.writeAsString(csv);

  String csv = const ListToCsvConverter().convert(yourListOfLists);
  file.writeAsString('$csv');
  final input = new File('a/csv/file.txt').openRead();

  **/
}






































/**read dataset= new read();
String username=dataset.reading().toString();
return username;
/**String username;
    File('file.txt').readAsString().then((String contents) {
    username=contents;
    print(contents);
    });
    return username;
 **/
}**/


//  onPressed: _loadCSV