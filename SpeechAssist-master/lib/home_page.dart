import 'package:flutter/material.dart';
import 'package:abilities/speechtext.dart';
import 'package:abilities/ml/Signtext.dart';
import 'package:abilities/resources.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;
const color1 = const Color(0x976d9e);
class HomePage extends StatefulWidget {
  @override
  MyHomePage createState() => new MyHomePage();
}

class MyHomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.lightGreen[300],
        automaticallyImplyLeading: false,
      ),
      body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              // image: DecorationImage(
              //     // image: NetworkImage(),
              //     fit: BoxFit.cover),
              ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://memesbams.com/wp-content/uploads/2017/11/Amazing-Cartoon-Cat-Gif.gif",
                    fit: BoxFit.fill,
                    width: 400,
                    height: 300,
                  ),
                ],
              ),
              Card(
                child: ListTile(
                  title: Text('             Welcome to Speech Assist!'),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  subtitle: Text(
                      'I am your Kittie. I am here to help you. Click on the buttons below.'),
                  isThreeLine: true,
                ),
                color: Colors.lightGreen[200],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 400,
                child:
              RaisedButton(
                child: Text('SPEECH TO TEXT'),
                color: Colors.purple[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
              ),),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 400,
                child:
              RaisedButton(
                child: Text('SIGN LANGUAGE TO TEXT'),
                color: Colors.yellow[200],
                
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdRoute(cameras)),
                  );
                },
              ),),
              SizedBox(
                height: 10,
              ),
              
              SizedBox(
                height: 50,
                width: 400,
                child:
              RaisedButton(
                child: Text('RESOURCES'),
                color: Colors.pink[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FourthRoute()),
                  );
                },
              ),),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 400,
                child:
              RaisedButton(
                child: Text('ABOUT'),
                color: Colors.blue[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0)), 
                          child: Container(
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintMaxLines: 3,
                                        hintText:
                                            'SpeechAssist was made with ❤️️ by Srirani, Akanksha, Akhila, Grace '),
                                  ),

                                  SizedBox(
                                    width: 320.0,
                                    child: RaisedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Ok",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: const Color(0xFF1BC0C5),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
              ),),

            ],
          )),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpeechScreen(),
      backgroundColor: Colors.purple[100],
    );
  }
}
class ThirdRoute extends StatelessWidget {
  final List<CameraDescription> cameras;
  ThirdRoute(this.cameras);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Signtext(cameras),
      backgroundColor: Colors.purple[100],
    );
  }
}
class FourthRoute extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Resources(),
      backgroundColor: Colors.purple[100],
    );
  }
}