import 'package:flutter/material.dart';
import 'package:love_in_store/widgets/custom_elevated_button.dart';

import '../widgets/profile_text_field.dart';

class MyProfile extends StatelessWidget {
  static const String id = 'MyProfile';
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            const Center(
                child: CircleAvatar(
              minRadius: 70,
              foregroundImage: AssetImage(
                'assets/icons/profile_image.png',
              ),
              maxRadius: 70,
            )),
            const ProfileTextField(
              hintText: 'First Name',
            ),
            const ProfileTextField(
              hintText: 'Last Name',
            ),
            const ProfileTextField(
              hintText: 'Email',
            ),
            const ProfileTextField(
              hintText: 'Mobile Number',
            ),
            const SizedBox(
              height: 15,
            ),
            CustomElevatedButton(
              text: 'UPDATE',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
