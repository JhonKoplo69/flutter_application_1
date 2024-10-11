import 'package:flutter/material.dart';

void main() {
  runApp(ProfileEditApp());
}

class ProfileEditApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileEditPage(),
    );
  }
}

class ProfileEditPage extends StatelessWidget {
  final Color blueColor = Colors.blue;
  final Color greyBackground = Colors.grey[200]!; // Light grey background

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: blueColor),
        elevation: 0, // Remove shadow
        title: Center(
          child: Container(
            width: 327,
            height: 52,
            padding: EdgeInsets.symmetric(horizontal: 16.0), // Padding for the border
            decoration: BoxDecoration(
              border: Border.all(color: blueColor, width: 2), // Blue border
              borderRadius: BorderRadius.circular(5), // Rounded corners
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min, // Only take the necessary space
              children: [
                // Ellipse around the back arrow icon
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Make it circular
                    color: Colors.blue, // Background color for the ellipse
                    border: Border.all(color: blueColor, width: 2), // Border color and width
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      // Handle back button press
                    },
                  ),
                ),
                // Edit Profile title
                Padding(
                  padding: const EdgeInsets.only(left: 8.0), // Spacing between icon and text
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: greyBackground, // Set grey background here
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Section with Border
            Container(
              width: 327,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white, // Use blue color for the border
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Profile Picture Section
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/foto/Ellipse 5.png'),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        icon: Icon(Icons.edit, color: blueColor),
                        onPressed: () {
                          // Handle profile picture edit
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Name Section
                  Text(
                    'Krisna Bimantoro',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: blueColor,
                    ),
                  ),
                  Text(
                    'WUZZ Rent',
                    style: TextStyle(
                      fontSize: 16,
                      color: blueColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // First Section with Email Address and Phone Number
            Container(
              width: 327,
              decoration: BoxDecoration(
                color: Colors.white, // Keep the content background white
                border: Border.all(
                  color: Colors.white, // Use blue color for the border
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Email Section
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      labelStyle: TextStyle(color: blueColor),
                      prefixIcon: Icon(Icons.email, color: blueColor),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blueColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blueColor),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: blueColor),
                  ),
                  SizedBox(height: 16),

                  // Phone Section
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(color: blueColor),
                      prefixIcon: Icon(Icons.phone, color: blueColor),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blueColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blueColor),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                    style: TextStyle(color: blueColor),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Second Section with Password and Confirm Password
            Container(
              width: 327,
              decoration: BoxDecoration(
                color: Colors.white, // Keep the content background white
                border: Border.all(
                  color: Colors.white, // Use blue color for the border
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Password Section
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: blueColor),
                      prefixIcon: Icon(Icons.lock, color: blueColor),
                      suffixIcon: Icon(Icons.visibility, color: blueColor),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blueColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blueColor),
                      ),
                    ),
                    obscureText: true,
                    style: TextStyle(color: blueColor),
                  ),
                  SizedBox(height: 16),

                  // Confirm Password Section
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(color: blueColor),
                      prefixIcon: Icon(Icons.lock, color: blueColor),
                      suffixIcon: Icon(Icons.visibility, color: blueColor),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blueColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blueColor),
                      ),
                    ),
                    obscureText: true,
                    style: TextStyle(color: blueColor),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Save Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle save action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: blueColor, // Button background color
                ),
                child: Text('Save', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
