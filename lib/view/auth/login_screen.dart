// import 'package:ecommerce/constant.dart';
// import 'package:ecommerce/core/view_model/control_view_model.dart';
// import 'package:ecommerce/view/widgets/custom_button.dart';
// import 'package:ecommerce/view/widgets/custom_social_button.dart';
// import 'package:ecommerce/view/widgets/custom_text.dart';
// import 'package:ecommerce/view/widgets/custom_text_form_field.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class LoginScreen extends GetWidget<AuthViewModel> {
//   const LoginScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(254, 254, 254, 1),
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
//           child: Column(
//             children: [
//               Container(
//                 padding: EdgeInsets.all(10),
//                 color: Colors.white,
//                 child: Column(
//                   children: [
//                     Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//                       CustomText(
//                         text: "Welcome,",
//                         fontSize: 30.0,
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       CustomText(
//                         text: "Sign Up",
//                         fontSize: 18.0,
//                         color: primaryColor,
//                       ),
//                     ]),
//                     CustomText(
//                       text: "Sign in to Continue",
//                       fontSize: 14,
//                       color: Colors.grey,
//                       alignment: Alignment.topLeft,
//                     ),
//                     SizedBox(
//                       height: 30.0,
//                     ),
//                     CustomTextFormField(
//                       text: "Email",
//                       hintText: "iamdavid@gmail.com",
//                       color: Colors.grey,
//                       onSaved: (value) {},
//                       validator: (value) {},
//                     ),
//                     SizedBox(
//                       height: 40.0,
//                     ),
//                     CustomTextFormField(
//                       text: "Password",
//                       hintText: "*************",
//                       color: Colors.black,
//                       onSaved: (value) {},
//                       validator: (value) {},
//                     ),
//                     SizedBox(
//                       height: 20.0,
//                     ),
//                     CustomText(
//                       text: "Forgot Password?",
//                       fontSize: 14,
//                       alignment: Alignment.topRight,
//                     ),
//                     SizedBox(
//                       height: 20.0,
//                     ),
//                     CustomButton(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                       padding:EdgeInsets.symmetric(horizontal: 30, vertical: 18),
//                       text: "SIGN IN",
//                       onPressed: () {},
//                     ),
//                     SizedBox(
//                       height: 20.0,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 13.0,
//               ),
//               CustomText(
//                 text: "-OR-",
//                 alignment: Alignment.center,
//               ),
//               SizedBox(
//                 height: 40.0,
//               ),
//               CustomSocialButton(
//                 text: "Sign In with Facebook",
//                 width: 60,
//                 imageAsset: "assets/images/facebook.png",
//                 onPressed: (){},
//                 padding:  EdgeInsets.symmetric(horizontal: 30, vertical: 18),
//
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               CustomSocialButton(
//                 text: "Sign In with Google",
//                 width: 60,
//                 imageAsset: "assets/images/google.png",
//                 onPressed: (){
//                   controller.googleSignInAMethod();
//                 },
//                 padding:  EdgeInsets.symmetric(horizontal: 30, vertical: 18),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
