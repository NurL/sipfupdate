import 'package:flutter/material.dart';

class WidgetConstant {
  static InputDecoration input({String? hint, String? error}) => InputDecoration(
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
        hintText: hint,
        errorText: error,
      );
}
