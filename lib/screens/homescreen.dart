import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/advertisementslider.dart';
import 'package:flutter_application_2/components/bottomnavbar.dart';
import 'package:flutter_application_2/constants.dart';

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
          ],
        ),
      ),
    );
  }
}
