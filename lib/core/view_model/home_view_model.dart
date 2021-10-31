import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/model/category_model.dart';
import 'package:ecommerce/view/cart/cart_screen.dart';
import 'package:ecommerce/view/home/home_secreen.dart';
import 'package:ecommerce/view/profile/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
final CollectionReference categoryCollectionRef =
    FirebaseFirestore.instance.collection('categories');

HomeViewModel(){
    getCategories();
}
List<CategoryModel>? get categoryModel1 => categoryModel;
//علشان فى كذا كتيجورى
List<CategoryModel>? categoryModel;
getCategories() async{
    categoryCollectionRef.get().then(
            (value) {
                for(int i = 0; i < value.docs.length ; i++){
                    categoryModel!.add(CategoryModel.fromJson(value.docs[i].data()) as Map<dynamic,dynamic>);
                }
            }
    );
}
}
