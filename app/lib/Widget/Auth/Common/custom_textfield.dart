import 'package:app/constants/login/size.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool isObsecure;
  final String textFieldName;
  final Icon icon;
  final TextEditingController controller;

  CustomTextField(
      {required this.textFieldName,
      required this.controller,
      required this.isObsecure,
      required this.icon});
  @override
  Widget build(BuildContext context) {
    LoginSize loginSize = new LoginSize();
    loginSize.build(context);
    return Material(
      color: Colors.white,
      elevation: 1.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Container(
        width: loginSize.getTextFieldWidth,
        child: TextField(
          onChanged: (value) {
            print("Item : ${value}");
          },
          obscureText: this.isObsecure,
          controller: this.controller,
          // obscureText: !ispassshow,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          onEditingComplete: () => FocusScope.of(context).unfocus(),
          style: TextStyle(fontSize: 18, color: Colors.grey),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: this.icon,
            border: InputBorder.none,
            hintText: this.textFieldName,
          ),
        ),
      ),
    );
  }
}