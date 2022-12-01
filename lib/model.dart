import 'package:get/get.dart';

class model extends GetxController{

  //variable declared==========

  List<String> menu = ["Sandwich", "Pizza", "Dhosa", "manchuriyan"];
  List<String> price = ["100", "200", "250", "300"];
  List<bool> check = [false,false,false,false];

  //sum==

  RxDouble sum=0.0.obs;

}