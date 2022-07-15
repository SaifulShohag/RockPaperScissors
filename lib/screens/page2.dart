import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:r_p_s/Data.dart';
import 'package:r_p_s/gameBrain.dart';

class ResultPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$result',
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Total Game Points $totalPoints',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Won: $win  ||  Lost: $loss',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              padding: const EdgeInsets.all(8.0),
              textColor: Colors.white,
              color: Colors.red[800],
              splashColor: Colors.transparent,
              child: new Text("Re-Match"),
              onPressed: () {
                Provider.of<Data>(context, listen: false).resetScore();
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
