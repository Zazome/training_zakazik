import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_zakazik/bloc/cubit.dart';
import 'package:training_zakazik/screens/homeScreen.dart';
import '../bloc/states.dart';
import '../constants.dart';
import '../services/api_service.dart';
class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
  var emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Login',
              style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),
            ),
            actions:const  [
              Icon(Icons.email,size: 34,),
              SizedBox(width: 20,),
            ],
            backgroundColor:stableColor1,
          ),
          body:  Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email address',
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: double.infinity,
                    child: FloatingActionButton(
                      onPressed: (){
                        Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomeScreen(email: emailController.text)),
                        );
                      },
                      backgroundColor: stableColor2,
                      child: const Text(
                        'Login Now',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );

  }
}
