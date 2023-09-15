import 'package:flutter/material.dart';

TextFormField myCustomTextFormField({
  required TextEditingController controller,
  String? Function(String?)? onChanged,
  String hintText = 'Ingrese el texto',
  bool obscureText = false,
}){
  return TextFormField(
    onChanged: onChanged,
    controller: controller,
    
    obscureText: obscureText,
    decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(19))
        )
    ),
  );
}