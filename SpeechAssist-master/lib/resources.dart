import 'package:flutter/material.dart';

class Resources extends StatefulWidget {
  @override
  MyResources createState() => new MyResources();
}

class MyResources extends State<Resources> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resources'),
        backgroundColor: Colors.lightGreen[300],
        automaticallyImplyLeading: false,
      ),
      body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              // image: DecorationImage(
              //     // image: NetworkImage(),
              //     fit: BoxFit.cover)
              ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child:
              RaisedButton(
                child: Text('Jobs for you'),
                color: Colors.lightGreen[200],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                },
              ),),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child:
              RaisedButton(
                child: Text('Facebook Groups'),
                color: Colors.lightGreen[200],
                
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                },
              ),),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child:
              RaisedButton(
                child: Text('Online Events'),
                color: Colors.lightGreen[200],
                
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                },
              ),),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child:
              RaisedButton(
                child: Text('Find a Volunteer'),
                color: Colors.lightGreen[200],
                
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                },
              ),),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child:
              RaisedButton(
                child: Text('Forum'),
                color: Colors.lightGreen[200],
                
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                },
              ),),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child:
              RaisedButton(
                child: Text('Useful Websites'),
                color: Colors.lightGreen[200],
                
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                },
              ),),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child:
              RaisedButton(
                child: Text('Covid-19 Updates'),
                color: Colors.lightGreen[200],
                
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                },
              ),),
            ],
          )),
    );
  }
}

