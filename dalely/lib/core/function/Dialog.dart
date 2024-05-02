

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../featuears/forgot_Password/presentation/widget/ShowDialog.dart';
import '../utils/App_Color.dart';

void DialogmsgSucc(){
   void Dialogmsg(BuildContext context) {
     showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          backgroundColor:
                              AppColors.primaryColor,
                          content:  ShowDialogWidget(mSG: 'SuccessFully , Check Your Email To Verify ?'),
                        );
                      },
                    );
  }
}

void DialogmsgFail({required String message}){
   void Dialogmsg(BuildContext context) {
     showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          backgroundColor:
                              AppColors.primaryColor,
                          content:  ShowDialogWidget(mSG: message),
                        );
                      },
                    );
  }
}
