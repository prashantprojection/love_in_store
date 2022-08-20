// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:love_in_store/screens/dashboard_screen.dart';
import 'package:love_in_store/screens/login_screen.dart';
import 'package:love_in_store/utils/shared_preferences.dart';

class LoadingScreen extends StatefulWidget {
  static const String id = 'LoadingScreen';
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  SharedPreference preference = SharedPreference();
  String? userID;

  @override
  Widget build(BuildContext context) {
    checkData();
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/login_theme.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: const [
                  Center(child: CircularProgressIndicator()),
                  Center(
                      child: Image(
                    image: AssetImage('assets/icons/logo.png'),
                    height: 32,
                    color: Colors.deepOrange,
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  checkData() async {
    userID = await preference.getReferenceData();
    if (userID != '' && userID != null) {
      Navigator.pushNamed(context, Dashboard.id);
    } else {
      Navigator.pushNamed(context, LoginScreen.id);
    }
  }
}
