import 'package:flutter/material.dart';


class DefaultCarouselItem extends StatelessWidget {
  String text;

  DefaultCarouselItem(String text) {
    this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      alignment: Alignment.center,
      decoration: new BoxDecoration(
        color: Colors.blue,
      ),
      child: Padding(
        padding: EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              this.text,
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}