import 'package:flutter/material.dart';
void main(){
  runApp( new Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Second App",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  String mytext= "Hello World";
  void changeText(){
  setState(() {
    if(mytext.startsWith("H")) {
      mytext = "Welcome to My App";
    }
    else {
      mytext="Hello User";
    }
  });
  }

  Widget bodyWidget(){
    return new Container(
      padding:EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text(mytext),
            new RaisedButton(
              child: new Text("Click"),
              onPressed:changeText ,
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body:bodyWidget()
    );
  }
}
