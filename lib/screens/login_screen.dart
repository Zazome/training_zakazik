import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_zakazik/bloc/cubit.dart';
import 'package:training_zakazik/screens/homeScreen.dart';
import '../bloc/states.dart';
import '../constants.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TrainCubit, LoginStates>(
        listener: (BuildContext context, state) {
          if (state is LoginFailedState){
            Fluttertoast.showToast(
                msg: '${state.data}',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }  else if (state is LoginSuccessState){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      HomeScreen(email: emailController.text)),
            );
          }
        },
        builder: (BuildContext context, state) {
            if (state is LoginLoadingState) {

            return const Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child:  CircularProgressIndicator(),
              ),
            ) ;
          }
           else {
              return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                'Login',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              backgroundColor: stableColor1,
            ),
            body: Center(
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
                        suffixIcon: Icon(
                          Icons.email,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: FloatingActionButton(
                        onPressed: () {
                          TrainCubit.get(context).getData(email: emailController.text);
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
        });
  }
}
