import 'package:flutter/material.dart';
import 'package:oguzhan_onal_login_page/feature/login/view/login_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            backgroundColor: Colors.white, primaryColor: Color(0XFF5ABD8C)),
        title: 'MaterialApp',
        debugShowCheckedModeBanner: false,
        home: LoginView());
  }
}
