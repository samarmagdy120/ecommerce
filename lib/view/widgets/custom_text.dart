import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
final String? text;
final double? fontSize;
final Color? color;
final Alignment? alignment;
final FontWeight? fontWeight;

  const CustomText({Key? key, this.text, this.fontSize=16, this.color=Colors.black, this.alignment=Alignment.topLeft, this.fontWeight}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
        child: Text(text!,
          // textAlign: textAlign,
          style: TextStyle(
              fontSize: fontSize,
              fontWeight:fontWeight ,
              color: color
          ),
        ),
    );
  }
}
