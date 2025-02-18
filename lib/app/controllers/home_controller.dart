
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  final RxBool carregado = false.obs;
  final RxInt contador = 0.obs;
  // final RxInt celsius = 0.obs;

  final celsius = TextEditingController();


  @override
  void onInit() {
    carregado.value = true;
  }
  

}

