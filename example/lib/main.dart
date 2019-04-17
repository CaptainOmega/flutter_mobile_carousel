import 'package:flutter/material.dart';
import 'package:flutter_mobile_carousel/carousel.dart';
import 'package:flutter_mobile_carousel/carousel_arrow.dart';
import 'package:flutter_mobile_carousel/default_carousel_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> items;

  @override
  void initState() {
    this.items =
      new List<String>.generate(100, (int index) => "Item: ${index}");
  }

  renderTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(title,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  renderCarouselWithoutArrows() {
    return Column(
      children: <Widget>[
        this.renderTitle('Carousel without arrows'),
        Carousel(
          rowCount: 3,
          children: this.items.map((String itemText) {
            return DefaultCarouselItem(itemText);
          }).toList(),
        ),
      ],
    );
  }

  renderCarouselWithArrows() {
    const double ARROW_WIDTH = 20.0;
    const double ARROW_ICON_SIZE = 18.0;

    return Column(
      children: <Widget>[
        this.renderTitle('Carousel with arrows'),
        Carousel(
          rowCount: 3,
          leftArrow: CarouselArrow(
            width: ARROW_WIDTH,
            child: Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.chevron_left,
                size: ARROW_ICON_SIZE,
              ),
            ),
          ),
          rightArrow: CarouselArrow(
            width: ARROW_WIDTH,
            child: Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.chevron_right,
                size: ARROW_ICON_SIZE,
              ),
            ),
          ),
          onDragStart: (DragStartDetails details) {},
          onDrag: (DragUpdateDetails details) {},
          onDragEnd: (DragEndDetails details) {},
          children: this.items.map((String itemText) {
            return DefaultCarouselItem(itemText);
          }).toList(),
        ),
      ],
    );
  }

  renderCustomCarousel() {
    const double ARROW_WIDTH = 20.0;
    const double ARROW_ICON_SIZE = 18.0;

    return Column(
      children: <Widget>[
        this.renderTitle('Custom carousel'),
        Carousel(
          rowCount: 3,
          leftArrow: CarouselArrow(
            width: ARROW_WIDTH,
            child: Container(
              color: Colors.blue,
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.chevron_left,
                  size: ARROW_ICON_SIZE,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          rightArrow: CarouselArrow(
            width: ARROW_WIDTH,
            child: Container(
              color: Colors.blue,
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.chevron_right,
                  size: ARROW_ICON_SIZE,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          onDragStart: (DragStartDetails details) {},
          onDrag: (DragUpdateDetails details) {},
          onDragEnd: (DragEndDetails details) {},
          children: this.items.map((String itemText) {
            return Container(
              padding: EdgeInsets.all(4.0),
              color: Colors.blue,
              child: Image.asset(
                'assets/images/ic_launcher.png',
                width: 40.0,
                height: 40.0,
                fit: BoxFit.fill,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carousel Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: new Color(0xFFFFFFFF),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Carousel Demo')),
        body: Column(
          children: <Widget>[
            this.renderCarouselWithoutArrows(),
            this.renderCarouselWithArrows(),
            this.renderCustomCarousel(),
          ],
        ),
      ),
    );
  }
}
