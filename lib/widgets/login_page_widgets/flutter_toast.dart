import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

  showToast({required String toastMessage})
  {
    return Fluttertoast.showToast(
        msg: toastMessage,
        fontSize: 10,
        backgroundColor: Colors.deepOrange,
        timeInSecForIosWeb: 5,
        gravity: ToastGravity.BOTTOM
    );
  }