import 'package:flutter/material.dart';
import 'package:love_in_store/screens/my_profile_screen.dart';
import 'package:love_in_store/widgets/custom_elevated_button.dart';

class Settings extends StatelessWidget {
  static const String id = 'Settings';
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: const [
                CustomElevatedButton(
                    text: 'MY PROFILE', navigate: MyProfile.id),
                CustomElevatedButton(text: 'RESET FULL APP'),
                CustomElevatedButton(text: 'EXPORT DB'),
                CustomElevatedButton(text: 'SYNC UPDATE')
              ],
            ),
          ),
        ));
  }
}
