import 'package:flutter_application_2/screens/categoryscreen.dart';
import 'package:flutter_application_2/screens/homescreen.dart';
import 'package:flutter_application_2/screens/selectionscreen.dart';
import 'package:flutter_application_2/screens/subcategoryscreen.dart';
import 'package:get/get.dart';

class AppPages {
  static List<GetPage> routes = [
    GetPage(name: '/', page: () => const Homescreen()),
    GetPage(name: '/subcategory', page: () => const SubCategoryScreen()),
    GetPage(name: '/selectqty', page: ()=> const SelectionScreen())
    /*    GetPage(name: '/top_channels', page: () => TopChannels()),
    GetPage(name: '/all_participants', page: () => AllParticipantsPage()), */
  ];
}
