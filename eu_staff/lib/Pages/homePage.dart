import 'package:eu_staff/Pages/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Signed in blud: ' + user.email!),
              MaterialButton(onPressed: (){
                FirebaseAuth.instance.signOut();
              },
              color: COlors.blue[200],
              child: Text('Sign Out'),
            )
          ],
        )
      ),
    );
  }
}