import 'package:flutter/material.dart';

import 'htaglist.dart';

class UserDataModal extends StatefulWidget {
  final int index; 
  const UserDataModal({ Key? key, required this.index }) : super(key: key);

  @override
  State<UserDataModal> createState() => _UserDataModalState();
}

class _UserDataModalState extends State<UserDataModal> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
                          title: const Text('User data'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [
                                Text(
                                  users[index]["name"],
                                ),
                                Text(
                                  users[index]["firstname"],
                                ),
                                Text(
                                  users[index]["email"],
                                ),
                                Text(
                                  users[index]["telephone"],
                                ),
                                Text(
                                  users[index]["Company"],
                                ),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('Ok'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
  }
}