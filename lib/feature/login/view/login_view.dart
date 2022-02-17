// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:oguzhan_onal_login_page/product/companents/text/app_text_strings.dart';
import 'package:oguzhan_onal_login_page/product/companents/consts.dart';
import 'package:oguzhan_onal_login_page/product/companents/colors/colors.dart';
import 'package:oguzhan_onal_login_page/product/widget/custom_text_from_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isCheckBox = false;
  final FocusNode _codeNode = FocusNode();
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
                    left: context.dynamicWidth(Consts.padding_dynamic)),
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
                      left: context.dynamicWidth(Consts.padding_dynamic),
                      right: context.dynamicWidth(Consts.padding_dynamic)),
                  child: Column(
                    children: [
                      Align(alignment: Alignment.topLeft, child: _TextFields()),
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
                    child: _LoginButton(context)),
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

  Form _TextFields() {
    return Form(
      key: _formKey,
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            CustomTextFormField(
              focusNode: _emailNode,
              codeController: _mailController,
              labelText: AppString().emailText ?? '',
              textInputType: TextInputType.emailAddress,
            ),
            //Padding(padding: context.paddingLow),
            CustomTextFormField(
              focusNode: _passwordNode,
              codeController: _passwordController,
              labelText: AppString().passwordText ?? '',
              isPassword: true,
              textInputType: TextInputType.visiblePassword,
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton _LoginButton(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ConstColors.buttonColor,
        ),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(AppString().talepAlindi ?? '')));
          }
        },
        child: Text(
          AppString().signInText ?? '',
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.normal),
        ));
  }
}
