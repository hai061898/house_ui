import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house/utils/color.dart';
import 'package:house/utils/funtion.dart';
import 'package:house/utils/layout.dart';
import 'package:house/utils/witgets.dart';
import 'package:house/widgets/button_icon.dart';
import 'package:house/widgets/option_button.dart';

import 'components/information_titls.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, this.itemData}) : super(key: key);
  final dynamic itemData;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: COLOR_WHITE,
        body: Container(
          width: Get.width,
          height: Get.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Image.asset(itemData["image"]),
                    Positioned(
                      width: Get.width,
                      top: kPadding,
                      child: Padding(
                        padding: sidePadding,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => Get.back(),
                              child: ButtonIcon(
                                height: 50,
                                width: 50,
                                child: Icon(
                                  Icons.keyboard_backspace,
                                  color: COLOR_BLACK,
                                ),
                              ),
                            ),
                            ButtonIcon(
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.favorite_border,
                                color: COLOR_BLACK,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    addVerticalSpace(kPadding),
                    Padding(
                      padding: sidePadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${formatCurrency(itemData["amount"])}",
                                style: themeData.textTheme.headline1,
                              ),
                              addVerticalSpace(5),
                              Text(
                                "\$${itemData["address"]}",
                                style: themeData.textTheme.subtitle2,
                              ),
                            ],
                          ),
                          ButtonIcon(
                            child: Text(
                              "20 Hours ago",
                              style: themeData.textTheme.headline5,
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                          )
                        ],
                      ),
                    ),
                    addVerticalSpace(kPadding),
                    Padding(
                      padding: sidePadding,
                      child: Text(
                        "House Information",
                        style: themeData.textTheme.headline4,
                      ),
                    ),
                    addVerticalSpace(kPadding),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          InformationTile(
                            content: "${itemData["area"]}",
                            name: "Square Foot",
                          ),
                          InformationTile(
                            content: "${itemData["bedrooms"]}",
                            name: "Bedrooms",
                          ),
                          InformationTile(
                            content: "${itemData["bathrooms"]}",
                            name: "Bathrooms",
                          ),
                          InformationTile(
                            content: "${itemData["garage"]}",
                            name: "Garage",
                          )
                        ],
                      ),
                    ),
                    addVerticalSpace(kPadding),
                    Padding(
                      padding: sidePadding,
                      child: Text(
                        itemData["description"],
                        textAlign: TextAlign.justify,
                        style: themeData.textTheme.bodyText2,
                      ),
                    ),
                    addVerticalSpace(100),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                width: Get.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OptionButton(
                      text: "Message",
                      icon: Icons.message,
                      width: Get.width * 0.35,
                    ),
                    addHorizontalSpace(10),
                    OptionButton(
                      text: "Call",
                      icon: Icons.call,
                      width: Get.width * 0.35,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


