import 'package:flutter/material.dart';

class LampOnOff extends StatefulWidget {
  const LampOnOff({Key? key}) : super(key: key);

  @override
  _LampOnOffState createState() => _LampOnOffState();
}

class _LampOnOffState extends State<LampOnOff> {
  bool onOff = true;
  var lampStatus = "off1";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Image.asset('images/$lampStatus.jpg'),
            height: MediaQuery.of(context).size.height / 3,
          ),
          ElevatedButton(
            child: const Text('Allume moi!'),
            onPressed: () {
              setState(() {
                onOff = !onOff;
                onOff ? lampStatus = "off1" : lampStatus = "on1";
              });
            },
          ),
        ],
      ),
    );
  }
}
