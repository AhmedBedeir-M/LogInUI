import 'package:flutter/material.dart';
import 'package:loginui/resoursces/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.controller, required this.hint, required this.icon}) : super(key: key);

  final TextEditingController controller;
  final String hint;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.textField,
        prefixIcon: Icon(icon),
        hintText: hint,
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primary),
        ),
      ),
    );
  }
}
