import 'package:flutter/material.dart';

class restore extends StatelessWidget {
  const restore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
        title: Text( 'Restore'),
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
        child: Container(
          width: 300,
          height: 600,
          child: SingleChildScrollView(
            child:Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 150.0,
                    width: 25.0,
                  ),
                  TextField(
                    decoration: new InputDecoration(
                        labelText: 'Enter hash value',
                        labelStyle: TextStyle(
                          color: Colors.black, // Color of the label text
                        ),
                        icon: new Icon(Icons.security,color: Colors.black,)
                    ),
                  ),
                  SizedBox(
                    height: 150.0,
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return senduser();
                      }
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),// Remove default padding
                    ),
                    child: Text('       restore       '),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    ]));
  }
}
class senduser extends StatelessWidget {
  const senduser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text( 'Send restore file to user'),
        backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
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
        child: Container(
          width: 300,
          height: 600,
          child: SingleChildScrollView(
            child:Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 150.0,
                    width: 25.0,
                  ),
                  TextField(
                    decoration: new InputDecoration(
                        labelText: 'Enter email of User',
                        labelStyle: TextStyle(
                          color: Colors.black, // Color of the label text
                        ),
                        icon: new Icon(Icons.email,color: Colors.black,)
                    ),
                  ),
                  SizedBox(
                    height: 150.0,
                  ),
                  ElevatedButton(
                    onPressed: (){

                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),// Remove default padding
                    ),
                    child: Text('  send to user  '),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    ]));
  }
}

