// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:love_in_store/api/post_login_model.dart';
import 'package:love_in_store/model/login_model/login_model.dart';
import 'package:love_in_store/screens/dashboard_screen.dart';
import 'package:love_in_store/utils/shared_preferences.dart';

class API {
  SharedPreference sharedPreference = SharedPreference();

  login(UserLoginModel userModel,
      {required BuildContext context, bool? saveData}) async {
    var url = Uri.parse("https://testapi.proanto.com/api/UserLogin/");
    http.Response response = await http.post(
      url,
      body: userModel.toMap(),
    );
    if (response.statusCode == 200) {
      LoginModel loginModel = loginModelFromJson(response.body);
      if (loginModel.success == "1") {
        if (saveData == true) {
          await sharedPreference.setReferenceData(
              loginModel.loginId ?? '', loginModel.token ?? '');
        }
        Navigator.popAndPushNamed(context, Dashboard.id);
      }
    }
  }
}
