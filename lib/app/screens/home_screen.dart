
import 'package:flutter/material.dart';
import 'package:flutter_faculdade/app/controllers/home_controller.dart';
import 'package:flutter_faculdade/utils/global_scaffold.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  final HomeController _controller = Get.put(HomeController());
  
  @override
  Widget build(Object context) {
    return GlobalScaffold(
      child:
      Obx(
        () {
        return 
        _controller.carregado.isTrue ?
          Column(
            children: [
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 120,
                          height: 45,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Text(
                            _controller.contador.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        FloatingActionButton(
                          onPressed: () {
                            
                            _controller.contador.value++;
                          },
                          backgroundColor: Colors.deepPurple,
                          child: Icon(
                            Icons.plus_one,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                blurRadius: 2,
                                color: Colors.black
                                )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )

        : Column(
          children: [
            Expanded(
              child: Center(
                child: 
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: [
                      Icon(
                        Icons.warning,
                        size: 70,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        'Ainda não há nada aqui.',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        );
          
        },
      )
    );
  }
  
}