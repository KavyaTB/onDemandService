import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/homescreen.dart';
import 'package:flutter_application_2/utils/routes.dart';
import 'package:flutter_application_2/utils/styling.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: textThemePrimary(),
      ),
      initialRoute: '/',
      getPages: AppPages.routes,
    );
  }
}
