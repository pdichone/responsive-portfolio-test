import 'dart:ui';

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({Key key}) : super(key: key);

  final projectsList = [
    {
      'title': 'Building a Cat',
      'subtitle': 'Great client',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Connekto',
      'subtitle': 'A Flutter app for nerds',
      'image': 'https://picsum.photos/id/1014/400/300'
    },
    {
      'title': 'Been There',
      'subtitle': 'Save places you\'ve visited',
      'image': 'https://picsum.photos/id/3/400/300'
    },
    {
      'title': 'Bengo',
      'subtitle': 'Flutter email app',
      'image': 'https://picsum.photos/id/1025/400/300'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Image.asset(
                        'headshot.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Text(
                            ' I\'m Paulo.\n A software developer \n and a teacher',
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 44.5),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 150, vertical: 60),
                              child: TextButton.icon(
                                  style: TextButton.styleFrom(
                                      textStyle:
                                          TextStyle(color: Colors.black12),
                                      backgroundColor: Colors.amberAccent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      )),
                                  onPressed: () {},
                                  icon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.email_outlined),
                                  ),
                                  label: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Drop me a line',
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 60.0),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 140,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "My Projects",
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w600,
                      fontSize: 23.0,
                      fontFamily: "Open Sans"),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  // scrollDirection: Axis.horizontal,
                  itemCount: projectsList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(3),
                      child: Column(
                        children: [
                          Card(
                            elevation: 3,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.work),
                                  title: Text(projectsList[index]['title']),
                                  subtitle:
                                      Text(projectsList[index]['subtitle']),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Image.network(
                                      projectsList[index]['image']),
                                ),
                                // ListTile(
                                //   title: Container(
                                //     child: SizedBox(
                                //       width: 300,
                                //       height: 300,
                                //       child: Image.network(
                                //           'https://picsum.photos/400/300'),
                                //     ),
                                //   ),
                                //   contentPadding: const EdgeInsets.all(23.0),
                                // ),
                                SizedBox(
                                  height: 30,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              // Spacer()
              // Text(
              //   "Carica store new product",
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontWeight: FontWeight.w600,
              //       fontSize: 16.0,
              //       fontFamily: "Open Sans"),
              // ),
              // SizedBox(height: 20.0),
              // Text(
              //   "Interior Design",
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontWeight: FontWeight.w600,
              //       fontSize: 50.0,
              //       fontFamily: 'Merriweather'),
              // ),
              // const SizedBox(height: 14.0),
              // Text(
              //   "Recliner lad, eu mollis diam, vitae gravida mauris. Cras mollis malesuada sem vitae venenatis. Morbi at erat eget nulla placerat egestas ",
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontWeight: FontWeight.w400,
              //       fontSize: 24.0,
              //       fontFamily: "Open Sans"),
              //   textAlign: TextAlign.justify,
              // ),
              // const SizedBox(height: 20.0),
              // TextButton.icon(
              //   onPressed: () {},
              //   icon: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Icon(Icons.read_more),
              //   ),
              //   style: TextButton.styleFrom(
              //       textStyle: TextStyle(color: Colors.black12),
              //       backgroundColor: Colors.amberAccent,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(24.0),
              //       )),
              //   // color: Color(0xFFCFE8E4),
              //   // shape: RoundedRectangleBorder(
              //   //   borderRadius: BorderRadius.circular(16.0),
              //   // ),
              //   label: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Text('Read more'),
              //   ),
              // ),
            ],
          ),
        ),
        const SizedBox(width: 100.0),
      ],
    );
  }
}
