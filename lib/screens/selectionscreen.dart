import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/bottomnavbar.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/utils/colors.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
       
       bottomNavigationBar: const CustomBottomNavigation(),
             body: Padding(
          
        padding: const EdgeInsets.all(kHorizontalPadding),
        child: ListView(
          
          shrinkWrap: true, // You won't see infinite size error
          children: [
            Text('Where do yo want cleaned ?',textAlign: TextAlign.left,style:Theme.of(context).textTheme.headline1, ),
         
          //  ListView.builder(itemBuilder: itemBuilder)
          ],
        ),
      ),
    );
  }
}