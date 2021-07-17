import 'package:flutter/material.dart';  
import 'package:sample/form.dart';
   
class AddPlan extends StatelessWidget {  
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "mont"
      ),
      home: AddPlanPage(),
    );
  }
  
} 
  

enum Product { productA, productD, productC }

/// This is the stateful widget that the main application instantiates.
class AddPlanPage extends StatefulWidget {
  const AddPlanPage({Key? key}) : super(key: key);

  @override
  State<AddPlanPage> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<AddPlanPage> {
  Product? _character = Product.productA;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''), backgroundColor: const Color(0xFFFBC02D)),
      body: Column(
      children: <Widget>[
         Text('Select Plan', style: TextStyle( // your text
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)
        ),
        ListTile(
          title: const Text('Product ABC'),
          leading: Radio<Product>(
            value: Product.productA,
            groupValue: _character,
            onChanged: (Product? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Product DEF'),
          leading: Radio<Product>(
            value: Product.productD,
            groupValue: _character,
            onChanged: (Product? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Product GHI'),
          leading: Radio<Product>(
            value: Product.productC,
            groupValue: _character,
            onChanged: (Product? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        Text('Select Child Plan', style: TextStyle( // your text
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)
        ),
        Container(
             
             width: 400,
              child:
        RaisedButton(color: const Color(0xFFFBC02D), padding: const EdgeInsets.all(5.0),
         onPressed: () { showModalBottomSheet(context: context, builder: (BuildContext bc){
      return Container(
        height: MediaQuery.of(context).size.height * .60,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
        Row(
           children: <Widget>[
             Text("Select Child Plan", style: TextStyle( // your text
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)
        ),
        Spacer(),
        IconButton(
          icon: Icon(Icons.cancel, color: Colors.orange, size: 25, ),
        onPressed: (){
          Navigator.of(context).pop();
        },)
           ],
        ),
        Row(
          children: <Widget>[
         
             SimpleDialogOption(
              
                            onPressed: () { },
                            child:const Text('Option 1'),
                            
               ),
                          
              
                          SimpleDialogOption(
                            onPressed: () { },
                            child: const Text('Option 2'),
                          ),
                        ],
                        
        ),

        Row(
          children: <Widget>[
            Container(
             margin: const EdgeInsets.only(top: 220),
             width: 380,
              child:
        RaisedButton(color: const Color(0xFFFBC02D), padding: const EdgeInsets.all(5.0),
         onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FormPlan()),
            );
          }, child: Text('ADD PLAN', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black), 
        ),
        ),),
          ],
        ),
        ],
        ),
      )
      );
    });
  
          }, child: Text('+Add Child Plan', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black), 
        ),
        ),),
      ],
    ),
    );
  }
}
