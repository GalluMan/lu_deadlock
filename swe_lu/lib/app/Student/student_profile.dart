import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:swe_lu/app/Student/dashboard.dart';
import 'package:swe_lu/app/views/login_page.dart';

class stu_profile extends StatefulWidget {
  const stu_profile({super.key});

  @override
  State<stu_profile> createState() => _stu_profileState();
}

class _stu_profileState extends State<stu_profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(title: const Text('Studen profile')),
        // body: const Center(child: Text('My Page!')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                child: Icon(Icons.face),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: const Text('DashBorad'),
                leading: const Icon(
                  Icons.book,
                ),
                onTap: () {
                  Get.to(dashboard_stu());
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.note,
                ),
                title: const Text('Classes'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                ),
                title: const Text('Logout'),
                onTap: () {
                  Get.to(LoginPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
