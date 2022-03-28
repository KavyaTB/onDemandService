import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/advertisementslider.dart';
import 'package:flutter_application_2/components/bottomnavbar.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/utils/colors.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Hi Kavya',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.card_travel_sharp,
                color: Colors.black,
              )),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Material(
              elevation: 20.0,
              shadowColor: whiteColor,
              child: TextFormField(
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0))),
                    label: Text('Food'),
                    suffixIcon: Icon(Icons.search)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const AdvertisementSlider(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [const Text('Services'), const Text('View All')],
            ),
            GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 8.0,
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
  const Choice(title: 'Home', icon: Icons.home),
  const Choice(title: 'Contact', icon: Icons.contacts),
  const Choice(title: 'Map', icon: Icons.map),
  const Choice(title: 'Phone', icon: Icons.phone),
  const Choice(title: 'Camera', icon: Icons.camera_alt),
  const Choice(title: 'Setting', icon: Icons.settings),
  const Choice(title: 'Album', icon: Icons.photo_album),
  const Choice(title: 'WiFi', icon: Icons.wifi),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1,
        color: kPrimaryLightColor,
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(child: Icon(choice.icon, size: 50.0)),
                Text(
                  choice.title,
                ),
              ]),
        ));
  }
}
