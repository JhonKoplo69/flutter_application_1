import 'package:flutter/material.dart';
import 'editProfile.dart';
import 'information.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 4; // Set initial selected index to "Profile"

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Rectangle Background for Profile Info
            Container(
              width: 327, // Set the width to match the bottom rectangle
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Profile Picture
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 38,
                      backgroundColor: Colors.grey[300],
                      backgroundImage:
                          AssetImage('assets/foto/Ellipse 5.png'), // Gambar dari assets
                      child: null, // Tidak ada ikon jika gambar ada
                    ),
                  ),
                  SizedBox(height: 16),
                  
                  // Name and Subtitle
                  Text(
                    'Krisna Bimantoro',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'WUZZ Rent',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 31), // Add spacing of 31 after the profile rectangle

            // Single Rectangle Background for all sections with width 327
            Center(
              child: Container(
                width: 327, // Set the width to match the profile rectangle
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // User Management Section
                    Card(
                      elevation: 0, // Remove elevation since background has shadow
                      child: ListTile(
                        leading: Icon(Icons.people),
                        title: Text('User Management'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // Navigate to the Edit Profile page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProfileEditPage()),
                          );
                        },
                      ),
                    ),
                    
                    // Settings Section
                    Card(
                      elevation: 0,
                      child: ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Settings'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),
                    ),

                    // SizedBox for spacing 37 before Divider
                    SizedBox(height: 37),

                    // Divider with width 327
                    Container(
                      width: 327, // Set the width to match the profile rectangle
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[300],
                      ),
                    ),

                    // SizedBox for spacing 37 after Divider
                    SizedBox(height: 37),

                    // Information Section
                    Card(
                      elevation: 0,
                      child: ListTile(
                        leading: Icon(Icons.info),
                        title: Text('Information'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => InfoPage()),
                          );},
                      ),
                    ),
                    
                    // Log Out Section
                    Card(
                      elevation: 0,
                      child: ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Log Out'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 31), // Add spacing of 31 before the BottomNavigationBar
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, // Change this for selected color
        unselectedItemColor: Colors.grey, // Change this for unselected color
        onTap: _onItemTapped,
      ),
    );
  }
}
