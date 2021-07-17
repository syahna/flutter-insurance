import 'package:flutter/material.dart';
import 'package:sample/addPlan.dart';

void main() {
       runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: new ThemeData(primaryColor: const Color(0xFFFBC02D)),
      home: Home(),
        );
      }
    }

    class Home extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
               title: Center(
            child: Text('Insurance App', style: TextStyle(
    color: Colors.white
  )),
          ),
        ),
        body: Center(
          child: Column( // add Column
    mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
     
       Text('You have not added any plans yet', textAlign: TextAlign.center, style: TextStyle( // your text
            color: Colors.black)
        ),
         Container(
             margin: const EdgeInsets.only(top: 520),
             width: 400,
              child:
        RaisedButton(color: const Color(0xFFFBC02D), padding: const EdgeInsets.all(15.0),
         onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddPlan()),
            );
          }, child: Text('ADD PLAN', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black), 
        ),
        ),),
           // your button beneath text
      ],
    ),
        ),
     
    );
  }
}



         