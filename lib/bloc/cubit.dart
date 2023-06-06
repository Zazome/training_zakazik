import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_zakazik/bloc/states.dart';
import 'package:http/http.dart' as http;
import '../services/login_model.dart';
import 'dart:convert';

class TrainCubit extends Cubit<LoginStates> {
  dynamic dataModel;

  TrainCubit() : super(LoginInitState());

  static TrainCubit get(context) => BlocProvider.of<TrainCubit>(context);
    Future<void> getData({
      required String email,
    }) async {
      emit(LoginLoadingState());
      String baseUrl = 'https://www.savehappykids.com/bus_nav_sys.php';
      var data = {'email': email, 'option': '1'};
      Uri url = Uri.parse(baseUrl);
      http.Response response = await http.post(
        url,
        body: data,
      );
      jsonDecode(response.body)['state']==true
      ?emit(LoginSuccessState(LoginModel.fromJson(jsonDecode(jsonDecode(response.body)['msg']))))
      :emit(LoginFailedState(jsonDecode(response.body)['msg']));
    }
}
