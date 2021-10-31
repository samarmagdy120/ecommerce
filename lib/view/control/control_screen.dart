import 'package:ecommerce/core/view_model/control_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlScreen extends StatelessWidget {
  const ControlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControlViewModel>(

      builder: (controller) =>
       Scaffold(
        body: controller.currentPage,
        bottomNavigationBar: bottomNavigationBar(),
      )
    );
  }
  Widget bottomNavigationBar() {
    return GetBuilder<ControlViewModel>(
        builder: (controller) =>
            BottomNavigationBar(

              items: [
                BottomNavigationBarItem(
tooltip: null,
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Text("Explore"),
                    ),
                    label: "",
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.asset("assets/images/Icon_Explore.png"),
                    )),
                BottomNavigationBarItem(
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(top:18.0),
                      child: Text("Cart"),
                    ),
                    label: "",
                    icon: Padding(
                      padding: const EdgeInsets.only(top:15.0),
                      child: Image.asset(
                        "assets/images/Icon_Cart.png",
                      ),
                    )),
                BottomNavigationBarItem(

                    activeIcon: Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Text("User"),
                    ),
                    label: "",

                    icon: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.asset("assets/images/Icon_User.png"),
                    ))
              ],
              currentIndex: controller.currentIndex,
              onTap: (index) =>
                  controller.changeSelectedValue(index),
              elevation: 0,
              selectedItemColor: Colors.black,
              backgroundColor: Colors.grey.shade50,
            )

    );
  }

}
