import 'package:flutter_faculdade/app/controllers/login_controller.dart';
import 'package:flutter_faculdade/app/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {

  LoginScreen({super.key});
  final LoginController _controller = Get.put(LoginController());


   @override
   Widget build(BuildContext context) {

    return Scaffold(

      body: 
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      controller: _controller.username,
                      decoration: InputDecoration(
                        labelText: 'Usuario',
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black) 
                        )
                      ),

                    ),
                    const SizedBox(height: 15,),
                    TextField(
                      controller: _controller.password,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black) 
                        )
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child:     
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: FloatingActionButton(
                                onPressed:() {
                                  _controller.login();
                                },
                                backgroundColor: Colors.blue.shade700,
                                elevation: 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Entrar',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                      ),
                                    ),
                                    SizedBox(width: 15,),
                                    Icon(
                                      Icons.login,
                                      size: 25,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            )
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          )
    );
   }
   
  
}