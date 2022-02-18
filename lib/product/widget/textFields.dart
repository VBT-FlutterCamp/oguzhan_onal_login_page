import 'package:flutter/material.dart';
import 'package:oguzhan_onal_login_page/product/companents/text/app_text_strings.dart';
import 'package:oguzhan_onal_login_page/product/widget/custom_text_from_field.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    Key? key,
    required GlobalKey<FormState> formKey,
    required FocusNode emailNode,
    required TextEditingController mailController,
    required FocusNode passwordNode,
    required TextEditingController passwordController,
  })  : _formKey = formKey,
        _emailNode = emailNode,
        _mailController = mailController,
        _passwordNode = passwordNode,
        _passwordController = passwordController,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final FocusNode _emailNode;
  final TextEditingController _mailController;
  final FocusNode _passwordNode;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
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
}
