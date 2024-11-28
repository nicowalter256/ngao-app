import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? labelText;
  final bool? obscureText;
  final String? obscureCharacter;
  final String? hintText;
  final bool isRequired;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final bool isReadOnly;
  final dynamic initailValue;
  final bool showRequiredText;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.keyboardType,
    this.obscureText = false,
    this.obscureCharacter = '*',
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.labelText,
    required this.isRequired,
    this.maxLines,
    this.showRequiredText = true,
    this.isReadOnly = false,
    this.initailValue,
  }) : super(key: key);

  final fieldStyle = const TextStyle(fontSize: 15, color: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            style: const TextStyle(color: blackBG),
            initialValue: initailValue,
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText!,
            obscuringCharacter: obscureCharacter!,
            maxLines: maxLines,
            readOnly: isReadOnly,
            validator: (val) {
              if (isRequired && val!.isEmpty) {
                return 'Field is required';
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
              fillColor: Colors.transparent,
              hintText: hintText,
              hintStyle: fieldStyle.copyWith(
                color: greyBG.withOpacity(.5),
              ),
              filled: true,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              errorMaxLines: 5,
              errorStyle: const TextStyle(color: redBG),
              isDense: true,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: greyBG.withOpacity(1)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
