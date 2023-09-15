import 'package:flutter/cupertino.dart';

class HomeViewModel {
  TextEditingController _emailController = TextEditingController();
  bool _isValidEmail = true;
  TextEditingController _passwordController = TextEditingController();

  TextEditingController getEmailController() => _emailController;
  TextEditingController getPasswordController() => _passwordController;
  bool getIsValidEmail() => _isValidEmail;

  validateEmail(){
    final email = _emailController.text;
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}');
    _isValidEmail = emailRegex.hasMatch(email);
  }
}