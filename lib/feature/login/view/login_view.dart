// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:oguzhan_onal_login_page/product/companents/text/app_text_strings.dart';
import 'package:oguzhan_onal_login_page/product/companents/consts.dart';
import 'package:oguzhan_onal_login_page/product/companents/colors/colors.dart';
import 'package:oguzhan_onal_login_page/product/widget/elevatedButton.dart';

import '../../../product/widget/textFields.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isCheckBox = false;
  final FocusNode _emailNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();
  bool isValidate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: context.dynamicHeight(0.2),
                decoration: BoxDecoration(color: Colors.white),
              ),
              Container(
                height: context.dynamicHeight(0.17),
                padding: EdgeInsets.only(
                    left: context.dynamicWidth(Consts.paddingDynamic)),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(AppString.welcome,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.normal,
                                color: ConstColors.firstText))),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        AppString.designRelish,
                        style: TextStyle(
                            fontSize: 56,
                            fontWeight: FontWeight.bold,
                            color: ConstColors.secondText),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  height: context.dynamicHeight(0.30),
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.only(
                      left: context.dynamicWidth(Consts.paddingDynamic),
                      right: context.dynamicWidth(Consts.paddingDynamic)),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: TextFields(
                              formKey: _formKey,
                              emailNode: _emailNode,
                              mailController: _mailController,
                              passwordNode: _passwordNode,
                              passwordController: _passwordController)),
                      Padding(padding: context.paddingLow),
                      Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            AppString.forgetPass,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: ConstColors.email),
                          ))
                    ],
                  )),
              Padding(padding: context.paddingLow),
              Container(
                //height: context.dynamicHeight(0.31),
                decoration: BoxDecoration(color: Colors.brown),
                child: SizedBox(
                    height: context.dynamicHeight(0.1),
                    width: context.dynamicWidth(0.9),
                    child: CustomElavated(formKey: _formKey, context: context)),
              ),
              SizedBox(height: context.dynamicHeight(0.16)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    AppString.createAccount,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: ConstColors.email),
                  ),
                  Text(AppString.create,
                      style: TextStyle(
                          color: ConstColors.secondText,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline))
                ],
              )
            ],
          ),
        ));
  }
}
