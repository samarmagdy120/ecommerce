import 'package:ecommerce/constant.dart';
import 'package:ecommerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
final EdgeInsetsGeometry? padding;
final ShapeBorder? shape;
final VoidCallback? onPressed;
final String? text;

  const CustomButton({Key? key, this.padding, this.shape, this.onPressed, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: padding,
      shape: shape,
      onPressed: onPressed,
      color: primaryColor,
      child: CustomText(
        text: text,
        color: Colors.white,
        alignment: Alignment.center,
      ),
    );
  }
}
