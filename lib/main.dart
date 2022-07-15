import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:r_p_s/Data.dart';
import 'package:r_p_s/screens/page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Data(),
      // create: (_) => Data(),
      child: MaterialApp( 
         home: RockPaperScissors(),
      ),
    );
  }
}