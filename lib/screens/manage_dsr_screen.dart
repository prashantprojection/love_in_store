import 'package:flutter/material.dart';
import 'package:love_in_store/screens/distributor_list_screen.dart';
import 'package:love_in_store/widgets/custom_outlined_button.dart';

class ManageDSR extends StatelessWidget {
  static const String id = 'ManageDSR';
  const ManageDSR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manage DSR"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: const [
            CustomOutlinedButton(text: 'DSR Enrollment',navigate: DistributorList.id,),
            CustomOutlinedButton(text: 'Rejected DSR'),
            CustomOutlinedButton(text: 'Approved DSR'),
            CustomOutlinedButton(text: 'DSR Resignation')
          ],
        ),
      )
    );
  }
}
