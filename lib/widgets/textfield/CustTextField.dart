import 'package:flutter/material.dart';

class CustTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  CustTextField({required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.5),
          ),
          prefixIcon: Icon(Icons.person, color: Colors.black),
        ),
        keyboardType: TextInputType.text);
  }
}
