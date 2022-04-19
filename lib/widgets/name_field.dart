import 'package:flutter/material.dart';

import '../constants.dart' as constants;

class NameField extends StatefulWidget {
  const NameField(
      {required this.fieldKey,
      required this.hintText,
      required this.labelText,
      this.errorText,
      required this.onSaved,
      required this.validator,
      required this.onFieldSubmitted,
      Key? key})
      : super(key: key);

  final Key fieldKey;
  final String hintText;
  final String labelText;
  final String? errorText;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final ValueChanged<String> onFieldSubmitted;

  @override
  _NameFieldState createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldKey,
      obscureText: _obscureText,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(constants.kDefaultCircularBorderRadius)),
        filled: true,
        hintText: widget.hintText,
        labelText: widget.labelText,
        errorText: widget.errorText,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}
