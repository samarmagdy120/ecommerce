import 'package:ecommerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomSocialButton extends StatelessWidget {
  final String? imageAsset;
  final String? text;
  final double? width;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  const CustomSocialButton(
      {Key? key, this.imageAsset, this.text, this.width, this.onPressed, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.grey.shade100),
      child: MaterialButton(
        padding:padding,
        onPressed: onPressed,
        child: Row(
          children: [
            Image.asset(imageAsset!),
            SizedBox(
              width: width,
            ),
            CustomText(
              text: text,
            )
          ],
        ),
      ),
    );
  }
}
