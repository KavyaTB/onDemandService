import 'package:flutter_application_2/screens/homescreen.dart';
import 'package:get/get.dart';

class AppPages {
  static List<GetPage> routes = [
    GetPage(name: '/', page: () => const Homescreen()),
    /*    GetPage(name: '/top_channels', page: () => TopChannels()),
    GetPage(name: '/all_participants', page: () => AllParticipantsPage()), */
  ];
}
