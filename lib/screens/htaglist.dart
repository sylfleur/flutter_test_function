import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;

class HtagList extends StatefulWidget {
  const HtagList({Key? key}) : super(key: key);

  @override
  _HtagListState createState() => _HtagListState();
}

class _HtagListState extends State<HtagList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Dismissible(
            key: const Key(''),
            onDismissed: (direction) =>
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(users[index]["name"].toString() + " Supprimé"),
                  ),
                ),
            background: Container(
              color: Colors.red,
            ),
            child: Card(
              child: ListTile(
                title: Text(users[index]["name"]),
              ),
            ));
      },
    );
  }
}

/* class User {
  final int id;
  final String name;
  final String firstname;
  final String email;
  final num telephone;
  final String Company;
  
  User({this.id, this.name, this.firsname, this.email, this.telephone, this.Company})

} */

List users = [
  {
    "id": 4,
    "name": "CAPO-CHICHI",
    "firstname": "Sylvanus",
    "email": "cfleurian@sylfleur.com",
    "telephone": 96081466,
    "Company": "LOL             "
  },
  {
    "id": 155,
    "name": "ber",
    "firstname": "bt@gmil.om",
    "email": "ddjS@gm.com",
    "telephone": 8754,
    "Company": "852147"
  },
  {
    "id": 156,
    "name": "BERTRANT",
    "firstname": "PAUL",
    "email": "DDD@MAIL.COM",
    "telephone": 7859641,
    "Company": "BR"
  },
  {
    "id": 158,
    "name": "dodou",
    "firstname": "martin",
    "email": "martin@gmi.cim",
    "telephone": 457893,
    "Company": "dotou"
  },
  {
    "id": 162,
    "name": "alph",
    "firstname": "alpha",
    "email": "aal@gmail.com",
    "telephone": 7788,
    "Company": "777"
  },
  {
    "id": 163,
    "name": "VIDEGNON",
    "firstname": "Patou",
    "email": "patou@sika.com",
    "telephone": 97953130,
    "Company": "SIKA"
  },
  {
    "id": 165,
    "name": "c",
    "firstname": "pi",
    "email": "pooo@gmail.com",
    "telephone": 888,
    "Company": "888"
  },
  {
    "id": 166,
    "name": "VIDEGNON",
    "firstname": "Patou",
    "email": "patou@sika.com",
    "telephone": 97953130,
    "Company": "SIKA"
  },
  {
    "id": 167,
    "name": "VIDEGNON",
    "firstname": "Patou",
    "email": "patou@sika.com",
    "telephone": 97953130,
    "Company": "SIKA"
  }
];
