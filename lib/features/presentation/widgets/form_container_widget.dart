import 'package:flutter/material.dart';
import 'package:insta_clone_clean_arch/consts.dart';

class FormContainerWidget extends StatefulWidget {
  final TextEditingController? controller;
  final Key? fieldKey;
  final bool? isPasswordField;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;
  final Widget? prefixIcon;
  final double borderRadiusValue;
  const FormContainerWidget({
    super.key,
    this.controller,
    this.fieldKey,
    this.isPasswordField,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.inputType,
    this.prefixIcon,
    this.borderRadiusValue = 3.0,
  });

  @override
  State<FormContainerWidget> createState() => _FormContainerWidgetState();
}

class _FormContainerWidgetState extends State<FormContainerWidget> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: secondaryColor.withOpacity(.35),
          borderRadius: BorderRadius.circular(widget.borderRadiusValue),
        ),
        child: TextFormField(
          controller: widget.controller,
          key: widget.fieldKey,
          keyboardType: widget.inputType,
          obscureText: widget.isPasswordField == true ? _obscureText : false,
          style: const TextStyle(color: primaryColor),
          onSaved: widget.onSaved,
          validator: widget.validator,
          onFieldSubmitted: widget.onFieldSubmitted,
          decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: secondaryColor),
            suffixIcon: GestureDetector(
              onTap: () => setState(() => _obscureText = !_obscureText),
              child: widget.isPasswordField == true
                  ? Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: _obscureText == false ? blueColor : secondaryColor,
                    )
                  : const SizedBox(),
            ),
            prefixIcon: widget.prefixIcon,
          ),
        ),
      );
}
