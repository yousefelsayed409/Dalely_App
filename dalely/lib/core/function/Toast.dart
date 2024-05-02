import 'package:dalely/core/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void toastMsg(String msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 50,
      backgroundColor: AppColors.deepBrown,
      textColor: Colors.white,
      fontSize: 16.0);
}
