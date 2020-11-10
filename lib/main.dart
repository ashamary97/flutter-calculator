import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main()=>runApp(Home());
class Home extends StatelessWidget {
  TextEditingController firstnum=TextEditingController();
  TextEditingController secondnum=TextEditingController();

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: firstnum,
                decoration: InputDecoration(
                  hintText: "Enter first number",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20.0,),

              TextField(
                controller: secondnum,
                decoration: InputDecoration(
                  hintText: "Enter second number",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.0,),
              RaisedButton(
                color: Colors.blue,
                onPressed: (){

                  int getnum1=int.parse(firstnum.text);
                  int getnum2=int.parse(secondnum.text);
                  int result=getnum1+getnum2;
                  print(result);

              },
              child: Text("ADD"),
              ),
              SizedBox(height: 10.0,),
              RaisedButton(
                color: Colors.blue,
                onPressed: (){
                  int getnum1=int.parse(firstnum.text);
                  int getnum2=int.parse(secondnum.text);
                  int result=getnum1-getnum2;
                  print(result);

              },
              child: Text("SUBTRACT"),
              ),
              SizedBox(height: 10.0,),
              RaisedButton(
                color: Colors.blue,
                onPressed: (){
                int getnum1=int.parse(firstnum.text);
                int getnum2=int.parse(secondnum.text);
                int result=getnum1*getnum2;
                print(result);
              },
              child: Text("MULTIPLY"),),
              SizedBox(height: 10.0,),
              
              RaisedButton(
                color: Colors.blue,
                onPressed: (){
                int getnum1=int.parse(firstnum.text);
                int getnum2=int.parse(secondnum.text);
                double result=getnum1/getnum2;

                print(result);
              },
              child: Text("DIVIDE"),)

            ],
          ),
        ),
      ),
    );
  }
}
