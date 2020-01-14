import 'package:flutter/material.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          
          children: <Widget>[
            back(),
            front(isPressed),



          ],
        ),
      ),
    );
  }
}

class front extends StatefulWidget {
  bool isaa =false;
  front(bool isa){
    this.isaa = isa;
  }
  @override
  _frontState createState() => _frontState(isaa);
}

class _frontState extends State<front> {
  bool isPressed =false;
  _frontState(bool isaa){
    this.isPressed = isaa;
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
      left: isPressed? MediaQuery.of(context).size.width/2 : 0,
      top: isPressed? MediaQuery.of(context).size.height/20 : 0,
      bottom: isPressed? MediaQuery.of(context).size.height/20 : 0,
      //left: isPressed? MediaQuery.of(context).size.width/2 : 0,
      child: ClipRRect(
        borderRadius: isPressed ? BorderRadius.circular(30) : BorderRadius.circular(0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.red,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 38.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.menu), onPressed: (){
                    setState(() {
                      isPressed = !isPressed;
                    });
                    print(isPressed);
                  }),
                  Text("Front Screen", style: TextStyle(fontSize: 30),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class back extends StatefulWidget {
  @override
  _backState createState() => _backState();
}

class _backState extends State<back> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.red[300],
      child: Padding(
        padding: const EdgeInsets.only(left: 38.0, top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FlatButton(child: Text("Title 1", style: TextStyle(fontSize: 20),), onPressed: (){},),
            FlatButton(child: Text("Title 2", style: TextStyle(fontSize: 20),), onPressed: (){},),
            FlatButton(child: Text("Title 3", style: TextStyle(fontSize: 20),), onPressed: (){},),
            FlatButton(child: Text("Title 4", style: TextStyle(fontSize: 20),), onPressed: (){},),
            FlatButton(child: Text("Title 5", style: TextStyle(fontSize: 20),), onPressed: (){},),
          ],
        ),
      ),
    );
  }
}
