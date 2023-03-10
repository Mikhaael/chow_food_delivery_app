import 'package:chow_food_delivery_app/utils/style.dart';
import 'package:flutter/material.dart';

import '../utils/res/res_profile.dart';

@immutable
class TextFieldState {
  final TextEditingController? controller;
  final Function()? onClick;
  final String label;
  final String labelText;
  final Widget? icon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool readOnly;
  final bool isInputUnderline;
  final int? maxLines;
  final String? Function(String?)? validator;
  final bool expands;
  final TextInputAction? textInputAction;
  final TextAlign textAlign;


  const TextFieldState({
    this.controller,
    this.onClick,
    this.labelText = '',
    this.label = '',
    this.icon,
    this.keyboardType,
    this.obscureText = false,
    this.readOnly = false,
    this.isInputUnderline = true,
    this.maxLines,
    this.expands = false,
    this.textInputAction,
    this.validator,
    this.textAlign = TextAlign.start,
  });

  TextFieldState copyWith({
    TextEditingController? controller,
    Function()? onClick,
    String? label,
    String? labelText,
    Widget? icon,
    TextInputType? keyboardType,
    bool? obscureText,
    bool? readOnly,
    bool? isInputUnderline,
    int? maxLines,
    bool? expands,
    TextInputAction? textInputAction,
    TextAlign? textAlign,
    String? Function(String?)? validator,
  }) =>
      TextFieldState(
          controller: controller ?? this.controller,
          onClick: onClick ?? this.onClick,
          label: label ?? this.label,
          labelText: labelText ?? this.labelText,
          icon: icon ?? this.icon,
          keyboardType: keyboardType?? this.keyboardType,
          obscureText: obscureText ?? this.obscureText,
          readOnly: readOnly ?? this.readOnly,
          isInputUnderline: isInputUnderline ?? this.isInputUnderline,
          maxLines: maxLines ?? this.maxLines,
          expands: expands ?? this.expands,
          textInputAction: textInputAction ?? this.textInputAction,
          textAlign: textAlign ?? this.textAlign,
          validator: validator ?? this.validator
      );
}

class EmailField extends StatelessWidget {
  final TextFieldState state;

  const EmailField({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      textAlign: state.textAlign,
      controller: state.controller,
      expands: state.expands,
      readOnly: state.readOnly,
      cursorColor: Colors.black,
      textInputAction: state.textInputAction,
      keyboardType: state.keyboardType,
      obscureText: state.obscureText,
      style: sLoginScreenSmallTextStyle.copyWith(
        color: Colors.black
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromRGBO(229, 230, 229, 1),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 25.0,
          vertical: 20.0,
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(8)
          ),
          borderSide: BorderSide(color: Color.fromRGBO(229, 230, 229, 1), width: 1.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
              color: Color.fromRGBO(229, 230, 229, 1), width: 1.0
          ),
        ),
        suffixIcon: state.icon,
      ),
      maxLength: state.maxLines,
    );
  }
}

class PasswordField extends StatefulWidget {
  final TextFieldState state;

  const PasswordField({Key? key, required this.state}) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscured = true;


  @override
  Widget build(BuildContext context) {
    final state = widget.state;

    return EmailField(
      state: state.copyWith(
        label: (state.label.isEmpty) ? ResRegisterScreen.password : state.label,
        obscureText: _obscured,
        keyboardType: TextInputType.visiblePassword,
        icon: GestureDetector(
          onTap: () {
            _obscured = _obscured ? false : true;
            setState(() {});
          },
          child: Icon(
            _obscured ? Icons.visibility_off : Icons.visibility,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}