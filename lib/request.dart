import 'package:flutter/material.dart';


class request extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
          title: Text( 'Request from User'),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              )
          ),
        ),
        body:Stack(
          fit: StackFit.expand, // Make the stack children fill the entire screen
          children: <Widget>[
        // Background Image
        Image.asset(
        'image/doxwipe.png', // Replace with your image path
          fit: BoxFit.cover, // Cover the entire screen
        ),
        Container(
          color: Colors.white.withOpacity(0.9), // Adjust the opacity (0.0 to 1.0) for the desired dim level.
        ), RectangleCardList(),
      ]),
      ));
  }
}

class RectangleCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0), // Adjust the padding as needed
      children: <Widget>[
        RectangleCardWidget('Request 1', 'User Name '),
        SizedBox(height: 16.0), // Add spacing between cards
        RectangleCardWidget('Request 2', 'User Name '),
        SizedBox(height: 16.0), // Add spacing between cards
        RectangleCardWidget('Request 3', 'User Name '),
        // Add more RectangleCardWidget() widgets as needed
      ],
    );
  }
}

class RectangleCardWidget extends StatelessWidget {
  final String title;
  final String description;

  RectangleCardWidget(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade900.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0), // Set the radius to 0 for a rectangle
      ),
      elevation: 4, // You can customize the elevation as per your preference
      child: Container(
        width: 200, // Set the desired width
        height: 100, // Set the desired height
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0), // Add spacing between title and description
            Text(
              description,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
