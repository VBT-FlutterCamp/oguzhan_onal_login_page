import 'package:flutter/material.dart';
import 'package:oguzhan_onal_login_page/feature/login/view/login_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            backgroundColor: Colors.white,
            primaryColor: const Color(0XFF5ABD8C)),
        title: 'MaterialApp',
        debugShowCheckedModeBanner: false,
        home: const LoginView());
  }
}
