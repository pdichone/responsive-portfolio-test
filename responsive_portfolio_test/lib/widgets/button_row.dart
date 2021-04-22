import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({Key key, this.size = MainAxisSize.min}) : super(key: key);
  final MainAxisSize size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: size,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          color: Color(0XFFFBEFD9),
          child: Row(
            children: [
              TextButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(),
                  icon: Image.asset(
                    "assets/images/social/facebook.png",
                    width: 15,
                    height: 15,
                  ),
                  label: Text('')),
              TextButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(),
                  icon: Image.asset(
                    "assets/images/social/instagram.png",
                    width: 15,
                    height: 15,
                  ),
                  label: Text('')),
              TextButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(),
                  icon: Image.asset(
                    "assets/images/social/twitter.png",
                    width: 15,
                    height: 15,
                  ),
                  label: Text(''))
            ],
          ),
        )

        // FlatButton(
        //   onPressed: () {},
        //   color: Color(0XFFFBEFD9),
        //   child: Center(
        //     child: Image.asset(
        //       "social/twitter.png",
        //       height: 15.0,
        //     ),
        //   ),
        // ),
        // FlatButton(
        //   onPressed: () {},
        //   color: Color(0XFFFBEFD9),
        //   child: Center(
        //     child: Image.asset(
        //       "social/instagram.png",
        //       height: 15.0,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
