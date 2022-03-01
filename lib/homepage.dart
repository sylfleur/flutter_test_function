import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  const MyBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return 
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Salut les flutterian',
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 30.0,
                fontStyle: FontStyle.italic),
          ),
          Card(
            child: SizedBox(
              width: width / 1.5,
              height: height / 3,
              child: Image.asset(
                'images/sebastien.jpg',
                fit: BoxFit.cover,
              ),
            ),
            elevation: 10.0,
          ),
          Container(
            height: height / 10,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.accessible,
                  color: Colors.white,
                  size: 30.0,
                ),
                Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                  size: 30.0,
                ),
                Icon(
                  Icons.circle_notifications,
                  color: Colors.white,
                  size: 30.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
    
  }
}