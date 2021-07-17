import 'package:flutter/material.dart';  
   
class FormPlan extends StatelessWidget {  
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "mont"
      ),
      home: FormPage(),
    );
  }
  
} 

class FormPage extends StatefulWidget {
  @override
  MyHomePageState createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<FormPage> {
  
  final _text = TextEditingController();
  final _sum = TextEditingController();
  bool _validate = false;
  int minNum = 100; 
  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
       appBar: AppBar(title: Text(''), backgroundColor: const Color(0xFFFBC02D)),
      body: Center(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Text('Select Child Plan', style: TextStyle( // your text
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)
        ),
        
        SizedBox(height: 10,),
                            Text("Rider A", style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
        SizedBox(height: 10,),
                            Text("Premium", style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),),
        SizedBox(height: 10,),
                            Text("Min Premium: RM100", style: TextStyle(
                              fontSize: 12,
                            ),),
        SizedBox(height: 10,),
                            Text("Max Premium: RM5000", style: TextStyle(
                              fontSize: 12,
                            ),),
         Container(
          
          height: 100,
          width: 380,
          color: Colors.black12,
         alignment: Alignment.center,
  
    child: 
         Container(
           height: 50,
          width: 350,
          color: Colors.white,
           child: TextField(
              controller: _text,
              decoration: InputDecoration(
                labelText: 'Enter the Value',
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
               
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.yellow)),
               
     ),
              ),
            ), 
         ), 
         
        SizedBox(height: 10,),
                            Text("Sum Insured", style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),),
        SizedBox(height: 10,),
                            Text("Min Sum Insured: RM100000", style: TextStyle(
                              fontSize: 12,
                            ),),
        SizedBox(height: 10,),
                            Text("Max Sum Insured: RM500000", style: TextStyle(
                              fontSize: 12,
                            ),),
         Container(
          
          height: 100,
          width: 380,
          color: Colors.black12,
         alignment: Alignment.center,
  
    child: 
         Container(
           height: 50,
          width: 350,
          color: Colors.white,
           child: TextField(
              controller: _sum,
              decoration: InputDecoration(
                labelText: 'Enter the Value',
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
               
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.yellow)),
               
     ),
              ),
            ), 
         ), 
         Container(
           width: 380,
           child:
            RaisedButton(
              onPressed: () {
                setState(() {
                  _text.text.isEmpty ? _validate = true : _validate = false;
                });
                 Map<String, dynamic> newData = new Map<String,dynamic>();
                            newData["Premium"] = _text.text;
                            newData["Sum"] = _sum.text;

                              Navigator.pop(context,newData);
              },
              child: Text('+Add Child Plan'),
              textColor: Colors.black,
              color: const Color(0xFFFBC02D),
              
            )
         ),
          ],
        ),
      ),
    );
  }
}