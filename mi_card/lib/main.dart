import 'package:flutter/material.dart';
import 'package:mi_card/showEmail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) => ShowEmail()),
                          ),
                        );
                      },
                      child: Text('Take the email'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
