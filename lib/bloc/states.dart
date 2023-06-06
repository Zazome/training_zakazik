import 'package:training_zakazik/services/login_model.dart';

abstract class LoginStates{}
class LoginInitState extends LoginStates{}
class LoginLoadingState extends LoginStates{}
class LoginSuccessState extends LoginStates{
  final LoginModel data;
  LoginSuccessState(this.data);
}
class LoginFailedState extends LoginStates{
  final dynamic data;
  LoginFailedState(this.data);
}

// class LoginLoadingState extends LoginStates{}
// class LoginErrorState extends LoginStates{
//   final String error ;
//   LoginErrorState(this.error);
// }