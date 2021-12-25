import 'package:flutter/material.dart';
import 'package:flutter_drawermenu/drawer_menu.dart';

class ProgilePage extends StatefulWidget {
  const ProgilePage({ Key? key }) : super(key: key);

  @override
  _ProgilePageState createState() => _ProgilePageState();
}

class _ProgilePageState extends State<ProgilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}