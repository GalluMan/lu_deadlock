import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:swe_lu/app/Student/student_profile.dart';

class dashboard_stu extends StatefulWidget {
  const dashboard_stu({super.key});

  @override
  State<dashboard_stu> createState() => _dashboard_stuState();
}

class _dashboard_stuState extends State<dashboard_stu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("StudenT Dashboard")),
        backgroundColor: Color.fromARGB(255, 108, 104, 250),
      ),
      body: Center(
          child: GridView.extent(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        maxCrossAxisExtent: 200.0,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            // child: const Text('First', style: TextStyle(fontSize: 20)),
            //color: Colors.yellow,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            //child: const Text('Second', style: TextStyle(fontSize: 20)),
            //color: Colors.blue,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
                child: const Text('Enroll course',
                    style: TextStyle(fontSize: 20))),
            color: Colors.blue,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
                child: Center(
              child: const Text('Completed course',
                  style: TextStyle(fontSize: 20)),
            )),
            color: Colors.blue,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
                child: Center(
                    child: const Text('Paynent history',
                        style: TextStyle(fontSize: 20)))),
            color: Colors.blue,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
                child: const Text('Q/A', style: TextStyle(fontSize: 20))),
            color: Colors.blue,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.only(left: 110),
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(stu_profile());
                  },
                  child: Text("Back")),
            ),
          ),
        ],
      )),
    );
  }
}
