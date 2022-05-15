import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cashiersimulator/quizpage.dart';
import 'package:cashiersimulator/studyguide1.dart';
import 'package:cashiersimulator/studyguide2.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> images = [
    "images/pquiz.png",
    "images/wpquiz.png",
    "images/fquiz.png",
  ];

  List<String> desc = [
    "Try Produce Code focused quiz\n",
    "Try taking a workplace focused Quiz\n",
    "Ready? Take Final quiz",
  ];

  Widget customcard(String quizname, String image, String desc) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            // pass the quizname name to other widget class this name will be used to open a specific JSON
            builder: (context) => getjson(quizname),
          ));
        },
        //next child edits all squares and images for quiz options
        child: Material(
          color: Colors.blueAccent,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //next container edits all quizname (assets) titles for quizes (produce code quiz, workplace quiz...)
                Center(
                  child: Text(
                    quizname,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontFamily: "Kollektif",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                //next container edits all quiz descriptions
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    desc,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "Monserat"),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (Colors.transparent),
        title: Text(
          "Cashier Simulator",
          style: TextStyle(
            fontFamily: "Kollektif",
            letterSpacing: 1,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ElevatedButton(
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(280, 46)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff4C748B)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ))),
            key: Key('sg1-btn'),
            child: Text('Produce Codes Study Guide',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xffFFFFFF)),
                key: Key('start-text')),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StudyGuide1Screen()),
              );
            },
          ),
          ElevatedButton(
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(280, 46)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff4C748B)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ))),
            key: Key('sg2-btn'),
            child: Text('Worplace Study Guide',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xffFFFFFF)),
                key: Key('start-text')),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StudyGuide2Screen()),
              );
            },
          ),
          customcard("Produce Code Quiz", images[0], desc[0]),
          customcard("Workplace Quiz", images[1], desc[1]),
          customcard("Final Quiz", images[2], desc[2]),
        ],
      ),
    );
  }
}
