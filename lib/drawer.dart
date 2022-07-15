import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:r_p_s/Data.dart';
import 'package:r_p_s/gameBrain.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  String appTitle = 'RockPaperScissors';

  Text drawerText({String name}) {
    return Text(
      name,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16.0,
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.red[700],
        padding: EdgeInsets.only(left: 5.0, top: 20.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: drawerText(name: '5 Game Points'),
              onTap: () {
                totalPoints = 5;
                Provider.of<Data>(context, listen: false).changeTotalMatch(totalPoints);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: drawerText(name: '10 Game Points'),
              onTap: () {
                totalPoints = 10;
                Provider.of<Data>(context, listen: false).changeTotalMatch(totalPoints);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: drawerText(name: '15 Game Points'),
              onTap: () {
                totalPoints = 15;
                Provider.of<Data>(context, listen: false).changeTotalMatch(totalPoints);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: drawerText(name: '20 Game Points'),
              onTap: () {
                totalPoints = 20;
                Provider.of<Data>(context, listen: false).changeTotalMatch(totalPoints);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: drawerText(name: '25 Game Points'),
              onTap: () {
                totalPoints = 25;
                Provider.of<Data>(context, listen: false).changeTotalMatch(totalPoints);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}