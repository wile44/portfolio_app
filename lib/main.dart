import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Portfolio App',
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
                      margin: EdgeInsets.only(top: 90.0),
                      color: Color(0xFFC4C4C4),
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 80),
                          Text(
                            'GOODLUCK WILE',
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 0.4,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            'Dart | Flutter | Java | NodeJs | Firebase',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.4,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Dar-es-salaam, Tanzania',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.4,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          SizedBox(
                            width: 150.0,
                            child: Divider(color: Colors.black45),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.email,
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Email',
                                        )
                                      ],
                                    ),
                                    onTap: () => _launchURL(_emailUrl)),
                                GestureDetector(
                                  onTap: () => _launchURL(_callUrl),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.call,
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Call',
                                      )
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => _launchURL(_gitUrl),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.code,
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
                          SizedBox(height: 35),
                          SizedBox(
                            width: 150.0,
                            child: Divider(color: Colors.black45),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'About',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
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
                          SizedBox(height: 40),
                        ],
                      ),
                    ),
                    Positioned(
                        right: 40,
                        left: 40,
                        bottom: 30,
                        child: Container(
                            height: 60,
                            width: 150,
                            child: RaisedButton(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: () => _launchURL(_emailUrl),
                              child: Text(
                                'Email me',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900),
                              ),
                            ))),
                    Positioned(
                      top: 40,
                      left: 90,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('images/Mask Group.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

const _gitUrl = 'https://github.com/wile44';
const _emailUrl =
    'mailto:goodluckwileonline@gmail.com?subject=Software Developer&body=Hi! Goodluck Wile';
const _callUrl = 'tel:+255 713 931 387';
void _launchURL(url) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
