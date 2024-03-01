import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sun_eye/core/colors/app_color.dart';
import 'package:flutter_sun_eye/src/controller/glasse_controller.dart';
import 'package:flutter_sun_eye/src/view/info_screen.dart';
import 'package:flutter_sun_eye/src/view/widgets/home_top_widget.dart';
import 'package:flutter_sun_eye/src/view/widgets/item_widget.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {


  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double widgetHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColors.blackColor,
        appBar: AppBar(
          backgroundColor: AppColors.blackColor,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Icon(Icons.menu),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
            )
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            //2
            SliverAppBar(
              backgroundColor: AppColors.blackColor,
              expandedHeight: widgetHeight / 2.2,
              flexibleSpace: HomeTopWidget(),
            ),
            //3
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (context, index) => Obx(() {
                  var glasses = Get.find<GlassesController>().glasses;
                  double widgetHeight = MediaQuery.of(context).size.height;
                  if (Get.find<GlassesController>().isLoading.value) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.all(25),
                            itemCount: glasses.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0.0, vertical: 15),
                                child: OpenContainer(
                                  closedColor: AppColors.blackColor,
                                  closedBuilder: (_, openContainer) {
                                    return ItemWidget(
                                      image: glasses[index].image,
                                      height: widgetHeight / 4.8,
                                      title: glasses[index].brand,
                                      color: glasses[index].color,
                                      price: glasses[index].price,
                                    );
                                  },
                                  openBuilder: (context, action) {
                                    return InfoScreen(
                                      title: glasses[index].name,
                                      image: glasses[index].image,
                                      price: glasses[index].price,
                                      color: glasses[index].color,
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  }
                }),
              ),
            ),
          ],
        ));
  }
}
