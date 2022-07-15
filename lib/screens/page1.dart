import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:r_p_s/Data.dart';
import 'package:r_p_s/drawer.dart';
import 'package:r_p_s/gameBrain.dart';
import 'package:r_p_s/screens/page2.dart';
import 'dart:math';

class RockPaperScissors extends StatefulWidget {
  @override
  _RockPaperScissorsState createState() => _RockPaperScissorsState();
}
class _RockPaperScissorsState extends State<RockPaperScissors> {
  
  void gameResult() {
    if(totalPoints == (win + loss)) {
      result = win > loss ? 'You Won!' : 'You Lost!';
      if( win == loss) result = "It's a Draw!";
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ResultPage();
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Data>(context);
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('RockPaperScissors'),
        backgroundColor: Colors.red[900], 
      ),
      drawer: DrawerWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Transform.rotate(
              angle: (pi / 180) * 180,
              child: Image(
                image: AssetImage('images/$imageNum.png'),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Image.asset('images/$yourNum.png'),
          ),
          SizedBox(
            height: 30.0,
          ),
          SizedBox(
            height: 80.0,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    color: Colors.teal,
                    child: Image.asset('images/2.png'),
                    onPressed: () {
                      setState(() {
                        gamePlay(2);
                      });
                      gameScore(context);
                      gameResult();
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.blueGrey,
                    child: Image.asset('images/1.png'),
                    onPressed: () {
                      setState(() {
                        gamePlay(1);
                      });
                      gameScore(context);
                      gameResult();
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.teal,
                    child: Image.asset('images/3.png'),
                    onPressed: () {
                      setState(() {
                        gamePlay(3);
                      });
                      gameScore(context);
                      gameResult();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Consumer<Data>(
              builder: (_, data, child) {
                return Center(
                child: Text(
                    'Game: ${data.ptotalPoints.toString()}  ||  Won: ${data.pwin.toString()}  ||  Lost: ${data.ploss.toString()}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
