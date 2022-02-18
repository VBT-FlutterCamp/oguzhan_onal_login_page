// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:oguzhan_onal_login_page/product/companents/colors/colors.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController codeController;
  final TextInputType textInputType;
  final String labelText;
  final bool isPassword;
  final FocusNode focusNode;
  const CustomTextFormField(
      {Key? key,
      required this.codeController,
      required this.textInputType,
      required this.labelText,
      this.isPassword = false,
      required this.focusNode})
      : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isTap = false;
  bool isPasswordVisible = true;
  void _toggleTap(bool a) {
    setState(() {
      if (isTap) {
        isTap = false;
      } else {
        isTap = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: ConstColors.border)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: (isTap ? ConstColors.onFocusedBox : Colors.white)),
            child: SizedBox(
              width: context.dynamicWidth(0.014),
              height: context.dynamicHeight(0.08),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: FocusScope(
                onFocusChange: _toggleTap,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Bu alan boş kalmamalı";
                    }
                    if (value.length < 6) {
                      return "6 dan küçük olamaz";
                    }
                    if (value.length > 20) {
                      return "20 den büyük olamaz";
                    }
                  },
                  focusNode: widget.focusNode,
                  controller: widget.codeController,
                  keyboardType: widget.textInputType,
                  obscureText: widget.isPassword
                      ? isPasswordVisible
                      : !isPasswordVisible,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    suffixIcon: widget.isPassword
                        ? IconButton(
                            icon: isPasswordVisible
                                ? Icon(Icons.visibility,
                                    color: ConstColors.iconColor, size: 25)
                                : Icon(
                                    Icons.visibility_off,
                                    color: ConstColors.iconColor,
                                    size: 25,
                                  ),
                            onPressed: () => setState(
                                () => (isPasswordVisible = !isPasswordVisible)))
                        : null,
                    labelText: widget.labelText,
                    labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: ConstColors.email),
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
