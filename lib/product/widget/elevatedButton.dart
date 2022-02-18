import 'package:flutter/material.dart';
import 'package:oguzhan_onal_login_page/product/companents/text/app_text_strings.dart';
import 'package:oguzhan_onal_login_page/product/companents/colors/colors.dart';

class CustomElavated extends StatelessWidget {
  const CustomElavated({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.context,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
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
          style: const TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.normal),
        ));
  }
}
