//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_training/homepage.dart';
import 'package:flutter_application_training/screens/lamp.dart';

import 'screens/codelabs.dart';
import 'screens/htaglist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Les Widget Basics',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      //home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/lamp': (context) => LampOnOff(),
        '/htag': (context) => HtagList(),
        '/codelabs': (context) => FlutterCodeLabs(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Widget myBody;

  Widget htag() {
    return HtagList();
  }

  Widget codelabs() {
    return FlutterCodeLabs();
  }

  Widget lamp() {
    return LampOnOff();
  }

  @override
  void initState() {
    super.initState();
    myBody = MyBody();
  }

  @override
  Widget build(BuildContext context) {
    //var myBody = MyBody();
    return Scaffold(
      //backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('App Bar'),
        //leading: Icon(Icons.access_alarm),
        actions: const [
          Icon(Icons.account_circle),
          Icon(Icons.support_agent),
          Icon(Icons.mail_outline_rounded),
        ],
        elevation: 10.0,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 50.0,
              margin: EdgeInsets.only(top: 15.0),
              child: Text('Menu'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              trailing: Icon(Icons.play_arrow),
              title: Text('Home'),
              onTap: () {
                setState(() {
                  myBody = MyBody();
                });
                Navigator.pop(context);
                //Navigator.pushNamed(context, "/");
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              trailing: Icon(Icons.play_arrow),
              title: Text('CodeLabs'),
              onTap: () {
                setState(() {
                  myBody = codelabs();
                });
                Navigator.pop(context);
                //Navigator.pushNamed(context, "/codelabs");
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              trailing: Icon(Icons.play_arrow),
              title: Text('ListView'),
              onTap: () {
                setState(() {
                  myBody = htag();
                });
                Navigator.pop(context);
                //Navigator.pushNamed(context, "/htag");
              },
            ),
            ListTile(
              leading: Icon(Icons.light_mode),
              trailing: Icon(Icons.play_arrow),
              title: Text('On / Off'),
              onTap: () {
                setState(() {
                  myBody = lamp();
                });
                Navigator.pop(context);
                //Navigator.pushNamed(context, '/lamp');
              },
            ),
          ],
        ),
      ),
      body: myBody,
    );
  }
}
