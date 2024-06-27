import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class doxwipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyImagePickerApp(),
    );
  }
}

class MyImagePickerApp extends StatefulWidget {
  @override
  _MyImagePickerAppState createState() => _MyImagePickerAppState();
}

class _MyImagePickerAppState extends State<MyImagePickerApp> {
  // Store the selected image file path
  String? _imagePath;

  // Function to open the device's gallery and select an image
  Future<void> _pickImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        // Store the selected image file path
        _imagePath = pickedFile.path;
      });
    } else {
      // The user canceled the image selection.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
        title: Text( 'Wipe the dox'),
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
      ),
      Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  child: Column(
                    children: [
                      OutlinedButton(
                        onPressed: _pickImageFromGallery,
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(350, 60)), // Adjust the size as needed
                        ),
                        child: Text('import requested image hash value',style: TextStyle(color: Colors.black ),),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      ElevatedButton(
                        onPressed: _pickImageFromGallery,
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(160, 50)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.lightBlueAccent.withOpacity(0.8) // Change this color to your desired button color
                          ),

                        ),

                          // Remove default padding
                        child: Text('Wipe'),
                      ),
                      SizedBox(height: 80,),
                      Center(
                        child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return fileorgin(); // Replace with the screen you want to navigate to
                                      },
                                    ),
                                  );
                                },
                                child: Card(
                                  elevation: 5,

                                  child: Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'image/person2.jpg',
                                          height: 35,
                                          width: 70,
                                        ),
                                        Text('file orgin'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return devices(); // Replace with the screen you want to navigate to
                                      },
                                    ),
                                  );
                                },
                                child: Card(
                                  elevation: 5,

                                  child: Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'image/devices2.jpg',
                                          height: 35,
                                          width: 70,
                                        ),
                                        Text('no of devices'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              )

                            ]
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    ]
      )
    );
  }
}



class fileorgin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
          title: Text( 'File Orgin'),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              )
          ),
        ),
        body: RectangleCardList(),
      ),
    );
  }
}

class RectangleCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand, // Make the stack children fill the entire screen
      children: <Widget>[
    // Background Image
    Image.asset(
    'image/doxwipe.png', // Replace with your image path
      fit: BoxFit.cover, // Cover the entire screen
    ),
    Container(
    color: Colors.white.withOpacity(0.9), // Adjust the opacity (0.0 to 1.0) for the desired dim level.
    ),
      ListView(
      padding: EdgeInsets.all(16.0), // Adjust the padding as needed
      children: <Widget>[
        RectangleCardWidget('Request 1', 'Detail of a person where the file origin'),
        SizedBox(height: 16.0), // Add spacing between cards
        RectangleCardWidget('Request 2', 'Detail of a person where the file origin'),
        SizedBox(height: 16.0), // Add spacing between cards
        RectangleCardWidget('Request 3', 'Detail of a person where the file origin'),
        // Add more RectangleCardWidget() widgets as needed
      ],
      )
      ]
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






class devices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
          title: Text( 'No of devices'),
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
        ),
        Center(
          child: RectangleCard(),
        ),
      ])),
    );
  }
}

class RectangleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade900.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0), // Set the radius to 0 for a rectangle
      ),
      elevation: 4, // You can customize the elevation as per your preference
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Adjust the padding as needed
        child: Container(
          width: 300,
          height: 70,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Request 1',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'no of devices contains files',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
