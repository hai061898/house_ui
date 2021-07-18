import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house/data/data.dart';
import 'package:house/utils/color.dart';
import 'package:house/utils/layout.dart';
import 'package:house/utils/witgets.dart';
import 'package:house/widgets/button_icon.dart';
import 'package:house/widgets/option_button.dart';

import 'components/choice_option.dart';
import 'components/item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: Get.width,
          height: Get.height,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addVerticalSpace(kPadding),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonIcon(
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.menu,
                            color: COLOR_BLACK,
                          ),
                        ),
                        ButtonIcon(
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.settings,
                            color: COLOR_BLACK,
                          ),
                        ),
                      ],
                    ),
                  ),
                  addVerticalSpace(20),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "City",
                      style: themeData.textTheme.bodyText2,
                    ),
                  ),
                  addVerticalSpace(10),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "San Francisco",
                      style: themeData.textTheme.headline1,
                    ),
                  ),
                  Padding(
                    padding: sidePadding,
                    child: Divider(
                      height: 25,
                      color: COLOR_GREY,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        "<\$220,000",
                        "For Sale",
                        "3-4 Beds",
                        ">1000 sqft"
                      ].map((e) => ChoiceOption(text: e)).toList(),
                    ),
                  ),
                  addVerticalSpace(10),
                  Expanded(
                    child: Padding(
                      padding: sidePadding,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: RE_DATA.length,
                        itemBuilder: (context, index) {
                          return RealEstateItem(
                            itemData: RE_DATA[index],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                width: Get.width,
                child: Center(
                  child: OptionButton(
                    text: "Map View",
                    icon: Icons.map_rounded,
                    width: Get.width * 0.35,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


