import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_zakazik/components.dart';
import '../bloc/cubit.dart';
import '../bloc/states.dart';
import '../services/login_model.dart';

class HomeScreen extends StatelessWidget {
  final String email;
  const HomeScreen({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // LoginModel service=LoginModel();
    return BlocBuilder<TrainCubit, LoginStates>(
      builder: (context, state) {
        if (kDebugMode) {
          print(state);
        }
        if (state is LoginInitState) {
          return const Center(
            child:  CircularProgressIndicator(),
          );
        } else if (state is LoginSuccessState) {
          var data = state.data;
          return personDesign(
              name: data.name,
              email: data.email,
              phone: data.phone,
              type: data.userType,
          );
        }else if (state is LoginFailedState) {
          if (kDebugMode) {
            print(state);
          }
          var data = state.data;
          return failedDesign(message: data);
        }
        else {
          return const Center(
            child: Text('NoOoOoOoOoOo'),
          );
        }
      },
    );
  }
}
