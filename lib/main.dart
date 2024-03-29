import 'package:flutter/material.dart';
import 'package:my_project/pages/login_page.dart';
import 'package:my_project/pages/login_page_with_validation.dart';
import 'package:my_project/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: LoginPageWithValidation(),
    );
  }
}
