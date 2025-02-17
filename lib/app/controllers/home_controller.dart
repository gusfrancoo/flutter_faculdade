
import 'package:get/get.dart';

class HomeController extends GetxController {

  final RxBool carregado = false.obs;
  final RxInt contador = 0.obs;


  @override
  void onInit() {
    carregado.value = true;
  }

}

