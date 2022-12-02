import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  String fullName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Doners profile'),
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Gender',
                ),
                onChanged: (text) {
                  setState(() {
                    fullName = text;
                    //you can access nameController in its scope to get
                    // the value of text entered as shown below
                    //fullName = nameController.text;
                  });
                },
              )),
          Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                ),
                onChanged: (text) {
                  setState(() {
                    fullName = text;
                    //you can access nameController in its scope to get
                    // the value of text entered as shown below
                    //fullName = nameController.text;
                  });
                },
              )),
          Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Weight',
                ),
                onChanged: (text) {
                  setState(() {
                    fullName = text;
                    //you can access nameController in its scope to get
                    // the value of text entered as shown below
                    //fullName = nameController.text;
                  });
                },
              )),
          Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Date Of Birth',
                ),
                onChanged: (text) {
                  setState(() {
                    fullName = text;
                    //you can access nameController in its scope to get
                    // the value of text entered as shown below
                    //fullName = nameController.text;
                  });
                },
              )),
          Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Date Of Donation',
                ),
                onChanged: (text) {
                  setState(() {
                    fullName = text;
                    //you can access nameController in its scope to get
                    // the value of text entered as shown below
                    //fullName = nameController.text;
                  });
                },
              )),
          TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.black),
            child: const Text(
              'Submit Details',
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () {
              //submit
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.black),
            child: const Text(
              'Return',
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () {
              //add the route of the next screen
            },
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(fullName),
          )
        ])));
  }
}
