import 'package:ecommerce/constant.dart';
import 'package:ecommerce/core/view_model/home_view_model.dart';
import 'package:ecommerce/view/control/control_screen.dart';
import 'package:ecommerce/view/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final List<String> names = ["d", "d", "d", "d"];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      init:HomeViewModel() ,
      builder: (controller)
    {
      return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 20),
            child: Column(
              children: [
                _searchTextFormField(),
                SizedBox(
                  height: 50,
                ),
                CustomText(
                  text: "Categories",
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 20,
                ),
                _listViewCategory(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Best Selling",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: "See all",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                _listViewProduct()
              ],
            ),
          ),
        ),
      );

    }
    );
  }

  Widget _searchTextFormField() =>
      Container(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(50),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
          ),
        ),
      );

  Widget _listViewCategory() =>
      Container(
        height: 100,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                Column(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          child: Image.asset("assets/images/man.png"),
                          backgroundColor: Colors.white,
                        ),
                      ),
                      elevation: .1,
                      shape: CircleBorder(),
                    ),
                    CustomText(
                      text: names[index],
                    )
                  ],
                ),
            separatorBuilder: (context, index) =>
                SizedBox(
                  width: 10,
                ),
            itemCount: names.length),
      );

  Widget _listViewProduct() =>
      Container(
        height: 350,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * .4,
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(bottom: 7),
                          height: 220,
                          child: Image.asset(
                            "assets/images/speaker.png",
                            fit: BoxFit.cover,
                          )),
                      CustomText(
                        text: "BeoPlay Speaker",
                        fontSize: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: CustomText(
                          text: "Bang and Olufsen",
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      CustomText(
                        text: "755",
                        color: primaryColor,
                      ),
                    ],
                  ),
                ),
            separatorBuilder: (context, index) =>
                SizedBox(
                  width: 10,
                ),
            itemCount: 10),
      );


}
