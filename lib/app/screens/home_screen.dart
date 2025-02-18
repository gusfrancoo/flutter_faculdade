
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 170,
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
                        // hoverElevation: 10,
                        onPressed: () {
                          
                          _controller.contador.value++;
                        },
                        backgroundColor: Colors.deepPurple,
                        child: Icon(
                          Icons.plus_one,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 1,
                              color: Colors.white
                              )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      FloatingActionButton(
                        // hoverElevation: 10,
                        onPressed: () {
                          
                          _controller.contador.value = 0;
                        },
                        backgroundColor: Colors.red,
                        child: Icon(
                          Icons.stop_circle_outlined,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 1,
                              color: Colors.white
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Convesor de temperatura',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: _controller.celsius,
                            decoration: InputDecoration(
                              labelText: 'Celsius',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey.shade300, width: 1)
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey.shade500, width: 1)
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey.shade500, width: 1)
                              ),
                              labelStyle: TextStyle(
                                color: Colors.black
                              )
                            ),
                                                
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 25,),
                    // Text('Fahrenheit'),
                    //   Container(
                    //     width: 170,
                    //       decoration: BoxDecoration(
                    //         border: Border.all(color: Colors.black, width: 1),
                    //         borderRadius: BorderRadius.all(Radius.circular(10)),
                    //       ),
                    //       child: Text(
                    //         _controller.contador.toString(),
                    //         textAlign: TextAlign.center,
                    //         style: TextStyle(
                    //           color: Colors.black,
                    //           fontSize: 30,
                            
                    //         ),
                    //       ),
                        
                    //   ),
                  ],
                )
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