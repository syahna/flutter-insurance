import 'package:flutter/material.dart';
import 'package:sample/Insurance.dart';  
   

class ShowData extends StatelessWidget {
  final Insurance insurance;

  const ShowData({Key? key, required this.insurance}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
       
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      insurance.name,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    
                  ],
                ),
              ),
              Text(
                "${insurance.minSum}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}