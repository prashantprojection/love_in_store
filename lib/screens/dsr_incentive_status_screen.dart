import 'package:flutter/material.dart';

class DSRIncentiveStatus extends StatelessWidget {
  static const String id = 'DSRIncentiveStatus';
  const DSRIncentiveStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Incentive Status'),
      ),
      body: const Center(child: Text('Hello World')),
    );
  }
}
