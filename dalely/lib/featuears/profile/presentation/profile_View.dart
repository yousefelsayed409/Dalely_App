import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../core/function/Future_Delay.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                GoogleSignIn googleSignIn = GoogleSignIn();
                googleSignIn.disconnect();
                FirebaseAuth.instance.signOut();
                CustomNavigatePushReplace(context, '/SignIn');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Text('peofile'),
      ),
    );
  }
}
