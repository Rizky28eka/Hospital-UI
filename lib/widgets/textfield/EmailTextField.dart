import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  EmailTextField({required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          hintStyle: TextStyle(color: Colors.black.withOpacity(0.5),),
          prefixIcon: Icon(Icons.email, color: Colors.black),
        ),
        keyboardType: TextInputType.emailAddress);
  }
}
