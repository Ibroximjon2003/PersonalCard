import 'package:flutter/material.dart';
import 'package:mi_card/constants.dart';
import 'package:mi_card/showEmail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Mi Card"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            CircleAvatar(
              backgroundImage: AssetImage('images/ibrohim.jpg'),
              radius: 50.0,
            ),
            Text(
              "Ibroximjon Maxammadjonov",
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: "SansPro",
                color: Colors.teal.shade100,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              height: 10,
              width: 150,
              child: Divider(color: Colors.teal.shade100),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    " +998 90 390 18 98",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: "SansPro",
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Center(
                    child: getEmail(''),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  getEmail('$email');
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return ShowEmail();
                  })));
                });
              },
              child: Text('Tap to the get email'),
            )
          ],
        ),
      ),
    );
  }
}

Widget getEmail([String email1 = '******************']) {
  return Text(
    "$email1",
    style: TextStyle(
      fontSize: 20,
      color: Colors.grey,
      fontWeight: FontWeight.bold,
    ),
  );
}
