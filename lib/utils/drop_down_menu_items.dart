import 'package:flutter/material.dart';

// List of States for Drop Down Menu in Personal Details Field
final stateList = ["Assam", "Arunachal Pradesh", "Maharashtra", "Uttarakhand", "Uttar Pradesh"];

List<DropdownMenuItem<String>> statesList() {
  return stateList
      .map<DropdownMenuItem<String>>(
        (e) => DropdownMenuItem(
          value: e,
          child: Text(e),
        ),
      )
      .toList();
}
