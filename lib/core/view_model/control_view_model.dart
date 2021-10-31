import 'package:ecommerce/view/cart/cart_screen.dart';
import 'package:ecommerce/view/home/home_secreen.dart';
import 'package:ecommerce/view/profile/profile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ControlViewModel extends GetxController{
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
 void googleSignInAMethod()async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
 }

  int currentIndex =0;
  Widget currentPage = HomeScreen();
// get ccurrentIndex => currentIndex;
  void changeSelectedValue(int index){
    currentIndex = index;

    switch(index){
      case 0:
        currentPage = HomeScreen();
        break;
      case 1:
        currentPage = CartScreen();
        break;

      case 2:
        currentPage = ProfileScreen();

    }
    update();
  }
}