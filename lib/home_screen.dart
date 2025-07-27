
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Totorial'),
      ),
      body: Column(
        children: [
          // Getx Dialog Alert
          Card(
            child: ListTile(
              title: Text('Getx Dialog Alert'),
              subtitle: Text('Getx dialog alert with getx'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Delete Chart',
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  // middleText can't increase from 3 lines
                  // middleText: 'Are you sure you want to delete this chat',
                  // custom content
                  content: Column(
                    children: [
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                    ],
                  ),

                  // textConfirm: 'yes',
                  // textCancel: 'No',
              //     custom create buttons,
                confirm: ElevatedButton(onPressed: (){
                  // Navigator.pop(context);
                  Get.back();
                },child: Text('ok')),
                  cancel: ElevatedButton(onPressed: (){},child: Text('no')),
                );
              },
            ),
          ),

          // theme change dark , light  that
          // Getx Bottom Sheet
          Card(
            child: ListTile(
              title: Text('Getx Bottom Sheet'),
              subtitle: Text('Getx dialog alert with getx'),
              onTap: (){
                Get.bottomSheet(
                   Container(
                     decoration: BoxDecoration(
                       color: Colors.black,
                       borderRadius: BorderRadius.circular(30),
                     ),
                     child: Column(
                       children: [
                         ListTile(
                           leading: Icon(Icons.light_mode),
                           title: Text('Light Theme'),
                           onTap: (){
                             Get.changeTheme(
                               ThemeData.light()
                             );
                           },
                         ),
                         ListTile(
                           leading: Icon(Icons.dark_mode),
                           title: Text('Dark Theme'),
                           onTap: (){
                             Get.changeTheme(
                               ThemeData.dark()
                             );
                           },
                         ),
                       ],
                     ),
                   )
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
