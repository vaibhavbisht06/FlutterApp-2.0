import 'package:flutter/material.dart';

 void main(){
   runApp(new Myapp());
 }

 class Myapp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: " My secound App",
       home: new Homepage(),
     );
   }
 }

 class Homepage extends StatefulWidget {
   @override
   _HomepageState createState() => _HomepageState();
 }
 
 class _HomepageState extends State<Homepage> {
   String mytext="Hello Users";
   void changeText(){
     setState(() {
       if(mytext.startsWith("H")){
         mytext="You have Clicked the button";
       }
       else{
         mytext="Hello Users";
       }
     });
   }

   Widget ClickButtonWidget(){
     return new Container(
       padding: EdgeInsets.all(8.0),
       child: new Center(
         child: new Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             new Text(mytext),
             new RaisedButton(
               child: new Text("Click Me :)", style: new TextStyle(color: Colors.deepOrange, fontSize: 24.0, fontStyle: FontStyle.italic),),
               onPressed: changeText,
               color: Colors.tealAccent,
             )
           ],
         ),
       ),
     );
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar:  new AppBar(
         title: new Text("Flutter Pages"),
       ),
       body: ClickButtonWidget()
     );
   }
 }
 