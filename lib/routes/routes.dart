import 'package:get/get.dart';
import 'package:house/data/data.dart';
import 'package:house/modules/detail/detail_screen.dart';
import 'package:house/modules/home/home_screen.dart';

class RoutesName {
  static final HOME = '/';
  static final Detail = '/detail';
}
class RoutesPage {
  static final routes =[
    GetPage(name: RoutesName.HOME, page: ()=>HomeScreen()),
    GetPage(name: RoutesName.HOME, page: ()=>DetailScreen()),
  ];
}
