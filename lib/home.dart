import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getSelectedPage() {
    switch (_selectedIndex) {
      case 0:
        return RentMotorcycleButton();
      case 1:
        return SearchPage();
      case 2:
        return AddPage();
      case 3:
        return CalendarPage();
      case 4:
        return ProfilePage();
      default:
        return RentMotorcycleButton();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: RentMotorcycleButton(),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MotorcycleStatusCard(title: 'Available', count: 20),
                    MotorcycleStatusCard(title: 'Booked', count: 8),
                    MotorcycleStatusCard(title: 'On Rent', count: 4),
                  ],
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Number Of Motorcycles ',
                          style: TextStyle(
                            color: Color(0xFF007BFF),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '20',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Recommendation',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      RecommendationCard(
                        imageUrl: 'assets/foto/PCX.jpg',
                        name: 'PCX 2024',
                        brand: 'Honda',
                        price: 150000,
                        type: 'Matic',
                      ),
                      SizedBox(width: 10),
                      RecommendationCard(
                        imageUrl: 'assets/foto/PCX.jpg',
                        name: 'PCX 2024',
                        brand: 'Honda',
                        price: 150000,
                        type: 'Matic',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Available',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                AvailableCard(
                  imageUrl: 'assets/foto/NMAX.jpg',
                  name: 'Nmax 2024',
                  brand: 'Yamaha',
                  licensePlate: 'KH 2013 WW',
                  price: 150000,
                  status: 'Available',
                ),
                SizedBox(height: 1),
                AvailableCard(
                  imageUrl: 'assets/foto/Nmax2024.jpg',
                  name: 'Nmax 2024',
                  brand: 'Yamaha',
                  licensePlate: 'KH 2013 WW',
                  price: 150000,
                  status: 'Available',
                ),
              ],
            ),
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
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

// Dummy pages for navigation
class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Search Page'));
  }
}

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Add Page'));
  }
}

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Calendar Page'));
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile Page'));
  }
}

// Existing components remain unchanged
class RentMotorcycleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF007BFF),
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 90, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.notifications, size: 20),
          SizedBox(width: 10),
          Text('Rent Motorcycle '),
          SizedBox(width: 15),
          Icon(Icons.search, size: 20),
        ],
      ),
    );
  }
}

class MotorcycleStatusCard extends StatelessWidget {
  final String title;
  final int count;

  MotorcycleStatusCard({required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(20),
        width: 100,
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF007BFF),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$count',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendationCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String brand;
  final int price;
  final String type;

  RecommendationCard({
    required this.imageUrl,
    required this.name,
    required this.brand,
    required this.price,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              height: 100,
              width: 160,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(brand),
                  Text('Rp ${price}/Day'),
                  Text(type),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AvailableCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String brand;
  final String licensePlate;
  final int price;
  final String status;

  AvailableCard({
    required this.imageUrl,
    required this.name,
    required this.brand,
    required this.licensePlate,
    required this.price,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            fit: BoxFit.cover,
            height: 80,
            width: 120,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    brand,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(name),
                  Text(licensePlate),
                  Text(
                    'Rp $price',
                    style: TextStyle(color: Color(0xFF007BFF)),
                  ),
                  Text(
                    status,
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
