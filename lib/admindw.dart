import 'package:flutter/material.dart';
import 'package:dwadmin/doxwipe.dart';
import 'package:dwadmin/restore.dart';
import 'package:dwadmin/request.dart';

class admindw extends StatelessWidget {
  const admindw({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => Scaffold.of(context).openDrawer()

        ),
        title: Text( 'Doxwipe'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            )
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text('Admin Name'), accountEmail: Text('Admin Email'),
              currentAccountPicture: CircleAvatar(backgroundColor: Colors.white),
            ),
            ListTile(
              title: Text('Admin Info'),
              leading: Icon(Icons.person),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: Text('History'),
              leading: Icon(Icons.history),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              title: Text('Contact User'),
              leading: Icon(Icons.phone),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              title: Text('Email from User'),
              leading: Icon(Icons.email),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              title: Text('Report From User'),
              leading: Icon(Icons.report),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            // Add more items as needed
          ],
        ),
      ),
      body: YourBodyWidget(), // Use builderContext here if needed

    );
  }
}

class YourBodyWidget extends StatelessWidget {
  const YourBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return request(); // Replace with the screen you want to navigate to
                                },
                              ),
                            );
                          },
                          child: Card(
                            elevation: 5,

                            child: Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Column(
                                children: [

                                  Image.asset(
                                    'image/reuser2.webp',
                                    height: 80,
                                    width: 30,
                                  ),
                                  Text('Request from User'),
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
                                  return doxwipe(); // Replace with the screen you want to navigate to
                                },
                              ),
                            );
                          },
                          child: Card(
                            elevation: 5,

                            child: Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Column(
                                children: [

                                  Image.asset(
                                    'image/doxwipe (5).png',
                                    height: 80,
                                    width: 110,
                                  ),
                                  Text('Wipe The Dox'),
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
                                  return restore(); // Replace with the screen you want to navigate to
                                },
                              ),
                            );
                          },
                          child: Card(
                            elevation: 5,

                            child: Padding(
                              padding: const EdgeInsets.all(60.0),
                              child: Column(
                                children: [

                                  Image.asset(
                                    'image/restore.png',
                                    height: 35,
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('Restore'),
                                ],
                              ),
                            ),
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
      ),
    );
  }
}

