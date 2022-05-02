import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/bottomnavbar.dart';
import 'package:flutter_application_2/utils/colors.dart';

import '../constants.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor: kPrimaryLightColor,
       
       bottomNavigationBar: const CustomBottomNavigation(),
             body: Padding(
          
        padding: const EdgeInsets.all(kHorizontalPadding),
        child: ListView(
          
          shrinkWrap: true, // You won't see infinite size error
          children: [
            Text('Subcategory',textAlign: TextAlign.left,style:Theme.of(context).textTheme.headline1, ),
         
            GridView.count(
                padding: EdgeInsets.all(10.0),
                shrinkWrap: true,
                physics: ScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 15.0,
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: SelectCard(choice: choices[index]),
                  );
                }))
          ],
        ),
      ),
    );
  }
}
class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Cleaning', icon: Icons.home),
  const Choice(title: 'Plumbing', icon: Icons.contacts),
  const Choice(title: 'Electrician', icon: Icons.map),
  const Choice(title: 'Painting', icon: Icons.phone),
  const Choice(title: 'Carpenter', icon: Icons.camera_alt),
  const Choice(title: 'Car Repair', icon: Icons.settings),
  const Choice(title: 'Food', icon: Icons.photo_album),
  const Choice(title: 'Dress', icon: Icons.wifi),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("clicked");
        Navigator.pushNamed(context, '/selectqty');
      },
      child: Container(
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Icon(choice.icon, size: 40.0))),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    choice.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ]),
        ),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(15.0),
          ),
          boxShadow: [
            BoxShadow(
              color: kElevationColor.withOpacity(0.3),
              offset: const Offset(3.0, -2.0),
              blurRadius: 4.0,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 4.0),
              blurRadius: 4.0,
            ),
          ],
        ),
      ),
    );
  }
}
