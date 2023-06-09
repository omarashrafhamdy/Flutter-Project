import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:student_online_quiz/screens/CoursesScreen.dart';
import 'package:student_online_quiz/screens/LoginScreen.dart';

import 'HomeScreen.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CourseScreen();
          } else {
            return LoginScreen();
          }
        },
      ),
    );
  }
}
