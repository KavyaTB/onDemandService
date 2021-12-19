import 'package:flutter/material.dart';

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
              ))
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              
              Expanded(
                child: TextFormField(
                  decoration:
                      const InputDecoration(label: Text('Food'),
                        suffixIcon: Icon(Icons.search)),
                ),
              ),
              SizedBox(width: 15,),
              IconButton(onPressed: (){}, icon:const Icon(Icons.filter))
            ],
          )
        ],
      ),
    );
  }
}
