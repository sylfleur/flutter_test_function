//ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Icon> noteByIcon = [
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Les Widget Basics',
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Center(
                      child: Text(
                        'Flutter est un framework web permettant de réaliser des applications Android!',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                _button('Vrai', Colors.green),
                _button('Faux', Colors.red),
                Row(
                  children: noteByIcon,
                ),
              ],
            ),
          ),
        ));
  }

  _button(String s, MaterialColor couleur) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {
            if (s == 'Vrai') {
              print('Vrai');
            } else {
              print('Faux');
            }
          },
          child: Text(s),
          style: ElevatedButton.styleFrom(
            primary: couleur,
            elevation: 5.0,
          ),
        ),
      ),
    );
  }
}
