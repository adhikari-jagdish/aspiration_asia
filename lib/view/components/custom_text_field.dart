import 'package:aspirationasia/view/components/custom_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomTextField extends StatelessWidget {
  final String attribute;
  final bool obscureText;
  final TextInputType inputType;
  final List<String Function(dynamic)> validators;
  final InputDecoration decoration;
  final bool isFilled;
  final Color filledColor;
  final String errorText;
  final void Function(dynamic) onChange;
  final String initialValue;

  CustomTextField({
    this.attribute,
    this.obscureText,
    this.inputType,
    this.validators,
    this.decoration,
    this.isFilled,
    this.filledColor,
    this.errorText,
    this.onChange,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      //controller: textController,
      initialValue: initialValue,
      attribute: attribute ?? 'text',
      obscureText: obscureText ?? false,
      onChanged: onChange,
      validators: validators ??
          [
            FormBuilderValidators.required(errorText: errorText ?? 'This field is required.'),
          ],
      keyboardType: inputType ?? TextInputType.text,
      decoration: decoration ??
          customDecoration.copyWith(
            filled: isFilled ?? true,
            fillColor: filledColor ?? Colors.white.withOpacity(0.2),
          ),
    );
  }
}
