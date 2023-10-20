import 'package:eu_staff/Pages/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'homePage.dart';

class myHome extends StatelessWidget {
  const myHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return homePage();
          }
          else{
            return login();
          }
        },
      ),
    );
  }
}