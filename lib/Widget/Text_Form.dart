import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm(
      {super.key,
      required this.hintText,
      required this.controler,
      required this.icon});
  final String hintText;
  final TextEditingController controler;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controler,
      decoration: InputDecoration(
        prefixIcon: icon,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[400], fontSize: 18),
        filled: true,
        fillColor: Colors.grey[250],
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(60),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(60),
          borderSide: const BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
