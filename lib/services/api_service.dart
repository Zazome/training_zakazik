import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'login_model.dart';
class TrainServices{
  String baseUrl='https://www.savehappykids.com/bus_nav_sys.php';
 Future <LoginModel> getData({
    required String email,
})
  async{
    var data = {'email':email , 'option': '1'};
    Uri url = Uri.parse(baseUrl);
    http.Response response=await http.post(
        url,
      body: data,
    );
    return LoginModel.fromJson(jsonDecode(jsonDecode(response.body)['msg']));
  }
}