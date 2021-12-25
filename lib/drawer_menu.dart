import 'package:flutter/material.dart';
import 'package:flutter_drawermenu/main.dart';
import 'package:flutter_drawermenu/profile.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({ Key? key }) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      UserAccountsDrawerHeader(
        accountName: Text('Jesada Sommana'), 
        accountEmail: Text('jesada.somm62@sskru.ac.th'),
        currentAccountPicture: CircleAvatar(
          child: FlutterLogo(size: 40.0,
          ),
          backgroundColor: Colors.black,
        ),
        ),
      ListTile(
        leading: Icon(Icons.house_rounded),
        title: const Text('หน้าแรก'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyHomePage(title: "My Home Page")),
            );
        },
      ),
      ListTile(
        leading: Icon(Icons.account_box_rounded),
        title: const Text('ข้อมูลส่วนตัว'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProgilePage()),
            );
        },
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: const Text('ออกจากระบบ'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
    ],
  ),
);
  }
}