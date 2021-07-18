import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house/routes/routes.dart';
import 'package:house/utils/color.dart';
import 'package:house/utils/funtion.dart';
import 'package:house/utils/witgets.dart';
import 'package:house/widgets/button_icon.dart';

class RealEstateItem extends StatelessWidget {
  final dynamic itemData;

  const RealEstateItem({Key? key, this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return GestureDetector(
      onTap: () => Get.toNamed(RoutesName.Detail),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset(itemData["image"])),
                Positioned(
                    top: 15,
                    right: 15,
                    child: ButtonIcon(
                        child: Icon(
                      Icons.favorite_border,
                      color: COLOR_BLACK,
                    )))
              ],
            ),
            addVerticalSpace(15),
            Row(
              children: [
                Text(
                  "${formatCurrency(itemData["amount"])}",
                  style: themeData.textTheme.headline1,
                ),
                addHorizontalSpace(10),
                Text(
                  "${itemData["address"]}",
                  style: themeData.textTheme.bodyText2,
                )
              ],
            ),
            addVerticalSpace(10),
            Text(
              "${itemData["bedrooms"]} bedrooms / ${itemData["bathrooms"]} bathrooms / ${itemData["area"]} sqft",
              style: themeData.textTheme.headline5,
            )
          ],
        ),
      ),
    );
  }
}
