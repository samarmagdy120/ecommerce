import 'package:ecommerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? text;

  final String? hintText;
  final Color? color;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final Widget? prefixIcon;

  const CustomTextFormField(
      {Key? key,
      this.hintText,
      this.color,
      this.onSaved,
      this.validator,
      this.text, this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text: text,
            fontSize: 14,
            color: Colors.grey.shade900,
          ),
          TextFormField(
            onSaved: onSaved,
            validator: validator,

            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: prefixIcon,
              hintStyle: TextStyle(color: color),

            ),

          ),
        ],
      ),
    );
  }
}
