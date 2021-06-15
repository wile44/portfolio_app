import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String _gitUrl = 'https://github.com/wile44';
  final String _emailUrl =
      'mailto:goodluckwileonline@gmail.com?subject=Software Developer&body=Hi! Goodluck Wile';
  final String _callUrl = 'tel:+255 713 931 387';

  void _launchURL(url) async {
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }

  Widget _contactButton(String title, String url) {
    return GestureDetector(
      onTap: () => _launchURL(url),
      child: Column(
        children: [
          Container(
            height: 20.89,
            child: Image(
                image: title == "Email"
                    ? AssetImage('images/email.png')
                    : AssetImage('images/call.png')),
          ),
          SizedBox(height: 10),
          Text(
            title,
          )
        ],
      ),
    );
  }

  Widget _flatButton() {
    return Positioned(
      right: 40,
      left: 40,
      bottom: 30,
      child: Container(
        height: 60,
        width: 150,
        child: RaisedButton(
          color: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: () => _launchURL(_emailUrl),
          child: Text(
            'Email me',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }

  Widget _sizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget _myAvatar() {
    return Positioned(
      top: 40,
      left: 90,
      child: CircleAvatar(
        radius: 60,
        backgroundImage: AssetImage('images/Mask Group.png'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Goodluck Wile',
        theme: ThemeData(
          fontFamily: 'Mulish',
        ),
        home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/WILE.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: SafeArea(
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      color: Color(0xFFC4C4C4),
                      margin: EdgeInsets.only(top: 90.0),
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _sizedBox(80.0),
                          Text(
                            'GOODLUCK WILE',
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 0.4,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          _sizedBox(6.0),
                          Text(
                            'Dart | Flutter | Java | NodeJs | Firebase',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.4,
                            ),
                          ),
                          _sizedBox(10.0),
                          Text(
                            'Dar-es-salaam, Tanzania',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.4,
                            ),
                          ),
                          _sizedBox(10.0),
                          SizedBox(
                            width: 150.0,
                            child: Divider(color: Colors.black45),
                          ),
                          _sizedBox(25),
                          Container(
                            width: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _contactButton('Email', _emailUrl),
                                _contactButton("Call", _callUrl),
                                GestureDetector(
                                  onTap: () => _launchURL(_gitUrl),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 19.95,
                                        child: Image(
                                            image: AssetImage(
                                                'images/github.png')),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Repos',
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          _sizedBox(35),
                          SizedBox(
                            width: 150.0,
                            child: Divider(color: Colors.black45),
                          ),
                          _sizedBox(10),
                          Text(
                            'About',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          _sizedBox(20),
                          Container(
                            width: 260,
                            child: Text(
                              'I design and build beautiful Mobile and Web Apps for businesses around the globe. If you need a modern and powerful Apps, Ping me.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                letterSpacing: 0.1,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          _sizedBox(40),
                        ],
                      ),
                    ),
                    _flatButton(),
                    _myAvatar(),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
