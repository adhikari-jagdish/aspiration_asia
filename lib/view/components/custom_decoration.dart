import 'package:aspirationasia/utils/custom_colour.dart';
import 'package:flutter/material.dart';

InputDecoration customDecoration = InputDecoration(
  contentPadding: const EdgeInsets.only(left: 30.0),
  filled: false,
  fillColor: CustomColor.welcomeTextColor.withOpacity(0.2),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      width: 2.0,
      color: CustomColor.welcomeTextColor.withOpacity(0.2),
    ),
    borderRadius: BorderRadius.circular(12.0),
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(
      width: 2.0,
      color: CustomColor.welcomeTextColor,
    ),
    borderRadius: BorderRadius.circular(12.0),
  ),
);
