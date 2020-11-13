import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

void main()=>runApp(Home());
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
TextEditingController getnumone=TextEditingController();
TextEditingController getnumtwo=TextEditingController();

int result1=0;
int result2=0;
int result3=0;
double result4=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 20.0,right: 20.0),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: getnumone,
                  decoration: InputDecoration(
                    hintText: "Enter first number",
                    border: OutlineInputBorder()
                  ),

                ),
                SizedBox(height: 20.0,),
                TextField(
                  controller: getnumtwo,
                  decoration: InputDecoration(
                    hintText: "Enter second number",
                    border: OutlineInputBorder()
                  ),

                ),
                SizedBox(height: 20.0,),

                RaisedButton(
                  color: Colors.blue,
                  onPressed: (){
                    int numone=int.parse(getnumone.text);
                    int numtwo=int.parse(getnumtwo.text);

                    setState(() {
                      result1=numone+numtwo;

                    });

                },
                child: Text("ADD"),),
                Text(result1.toString()),

                SizedBox(height: 20.0,),
                RaisedButton(
                  color: Colors.blue,
                  onPressed: (){
                    int num1=int.parse(getnumone.text);
                    int num2=int.parse(getnumtwo.text);

                    setState(() {
                      result2=num1-num2;
                    });

                },
                child: Text("SUBTRACT"),

                ),
                Text(result2.toString()),

                SizedBox(height: 20.0,),
                RaisedButton(
                  color: Colors.blue,
                  onPressed: (){
                    int firstnum=int.parse(getnumone.text);
                    int secondnum=int.parse(getnumtwo.text);

                    setState(() {

                      result3 = firstnum*secondnum;
                    });

                  },

                child: Text("MULTIPLY"),),
                Text(result3.toString()),

                SizedBox(height: 20.0,),

                RaisedButton(
                 color: Colors.blue,
                  onPressed: (){
                    int first=int.parse(getnumone.text);
                    int second=int.parse(getnumtwo.text);

                    setState(() {

                     result4 = first/second;
                    });

                  },

                child: Text("DIVIDE"),),

                Text(result4.toString()),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
