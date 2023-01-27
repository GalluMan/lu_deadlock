import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class payemnt extends StatefulWidget {
  @override
  State<payemnt> createState() => Teacherlist();
}

class Teacherlist extends State<payemnt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 200,
            ),
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection("TeacherInformation")
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        String e;
                        String ore = "moni";

                        DocumentSnapshot doc = snapshot.data!.docs[index];
                        //print("bye");
                        e = doc['name'];
                        //print(e);
                        if (e == 'moni') {
                          print("hello");
                        }
                        return Text("Name");
                      });
                } else {
                  return Text("No datasss");
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

Future createuser(String cost, int Con) async {
  final docuser = FirebaseFirestore.instance
      .collection('TeacherInformation')
      .doc('LZElQHqFrp0YRLK1ItuR');
  print("shafkat");
  final jsona = {'payment': "1"};
  docuser.set(jsona);
}
