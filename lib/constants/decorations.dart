import 'package:flutter/material.dart';
InputDecoration inputDecor({String hint, IconData prefix, bool obscure, IconData suffix, Function toogle}) {
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.all(
        Radius.circular(30.0),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(30.0),
      ),
      borderSide: BorderSide(color: Colors.grey[100]),
    ),
    hintText: hint,
    filled: true,
    fillColor: Colors.grey.shade200,
    prefixIcon: Icon(
      prefix,
      size: 25.0,
      color: Colors.black,
    ),
    suffixIcon: IconButton(
      onPressed: toogle,
      icon: Icon(
        obscure ? Icons.visibility_off : suffix,
        size: 25.0,
        color: Colors.black,
      ),
    ),
    hintStyle: TextStyle(
      color: Colors.grey,
      fontSize: 12.0,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.normal,
    ),
  );
}