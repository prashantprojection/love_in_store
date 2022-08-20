import 'package:flutter/material.dart';
import 'package:love_in_store/api/api.dart';
import 'package:love_in_store/api/post_login_model.dart';
import 'package:love_in_store/screens/dashboard_screen.dart';
import '../utils/constants.dart';
import '../widgets/login_page_widgets/flutter_toast.dart';
import '../widgets/login_page_widgets/text_form_field.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'LoginPage';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  API api = API();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/login_theme.png"),
                  fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(image: AssetImage("assets/images/logo.png")),
                const SizedBox(
                  height: 40,
                ),
                CustomTextField(
                    controller: userIdController,
                    hintText: "User ID",
                    prefixIcon: Icons.person_outline),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                    controller: passwordController,
                    hintText: "Password",
                    prefixIcon: Icons.lock_outline,
                    isObscure: true),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        value: rememberMeCheckBox,
                        onChanged: (value) {
                          setState(() {
                            rememberMeCheckBox = value!;
                          });
                        },
                        side: const BorderSide(color: Colors.white, width: 2)),
                    const Text('Remember me',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
                Row(children: [
                  Checkbox(
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                      value: termsAndConditionsCheckBox,
                      onChanged: (value) {
                        setState(() {
                          termsAndConditionsCheckBox = value!;
                        });
                      },
                      side: const BorderSide(color: Colors.white, width: 2)),
                  const Text('I agree on YOMA Terms & Conditions',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline)),
                ]),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () async {
                      if (userIdController.text.isEmpty) {
                        showToast(toastMessage: "Please Enter User Id");
                      } else if (passwordController.text.isEmpty) {
                        showToast(toastMessage: "Please Enter Password");
                      } else if (termsAndConditionsCheckBox == false) {
                        showToast(
                            toastMessage: "Please Accept Terms & Conditions");
                      } else {
                        await api.login(
                            context: context,
                            saveData: rememberMeCheckBox,
                            UserLoginModel(
                              username: userIdController.text, // colgatedemo1
                              passwordValue: passwordController.text, // 123456
                              version: '0.0.1',
                              AppId: '2',
                            ));
                      }
                    },
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 15.0),
                    )),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
