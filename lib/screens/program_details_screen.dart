import 'package:flutter/material.dart';
import 'package:love_in_store/widgets/custom_outlined_button.dart';

class ProgramDetails extends StatelessWidget {
  static const String id = 'ProgramDetails';
  const ProgramDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Program Details'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomOutlinedButton(text: 'Program Brochure'),
              CustomOutlinedButton(text: 'Program Detailer')
            ],
          ),
        ),
      ),
    );
  }
}
