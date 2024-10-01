import 'package:flutter/material.dart';
import 'package:treckify/pages/travelbuddy.dart';
import 'package:treckify/pages/travelguide.dart';
import 'communities.dart';
import 'home.dart';

class Hotels extends StatefulWidget {
  const Hotels({super.key});

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _searchController = TextEditingController(); // Controller for search input

  // Sample hotel data
  final List<Map<String, dynamic>> _hotels = [
    {
      'name': 'Mountain View Hotel',
      'location': 'Himalayas',
      'rating': 4.5,
      'price': 120,
      'status': 'Available',
    },
    {
      'name': 'Ocean Breeze Resort',
      'location': 'California',
      'rating': 4.0,
      'price': 150,
      'status': 'Available',
    },
    {
      'name': 'City Center Inn',
      'location': 'New York',
      'rating': 3.5,
      'price': 100,
      'status': 'Fully Booked',
    },
    {
      'name': 'Desert Oasis',
      'location': 'Arizona',
      'rating': 4.8,
      'price': 200,
      'status': 'Available',
    },
    {
      'name': 'Countryside Cottage',
      'location': 'Texas',
      'rating': 4.2,
      'price': 90,
      'status': 'Available',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu, color: Colors.white, size: 30),
          ),
        ),
        backgroundColor: const Color(0xFF141527),
        title: const Text(
          "Hotel Booking",
          style: TextStyle(fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF292B40),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF292B40),
              ),
              child: Row(
                children: [
                  Icon(Icons.account_circle_sharp, size: 120, color: Colors.white),
                  SizedBox(width: 20),
                  Text(
                    "Marry",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: "ibm"),
                  )
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.white),
              title: const Text('Home', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.group, color: Colors.white),
              title: const Text('Communities', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Communities()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_pin_circle, color: Colors.white),
              title: const Text('Travel Buddy', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TravelDialogBox()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.map, color: Colors.white),
              title: const Text('Travel Guide', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TravelGuide()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.hotel, color: Colors.white),
              title: const Text('Hotels', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Hotels()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.info, color: Colors.white),
              title: const Text('About', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: Container(
          width: double.infinity,
          color: const Color(0xFF141527),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: 'Search hotels...',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        // Handle search action
                        String query = _searchController.text;
                        // Implement search logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD2F366), // Button color
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      ),
                      child: const Text('Search'),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _hotels.length,
                  itemBuilder: (context, index) {
                    final hotel = _hotels[index];
                    return Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            hotel['name'],
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Location: ${hotel['location']}',
                            style: const TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            'Rating: ${hotel['rating']} ⭐',
                            style: const TextStyle(fontSize: 14),
                          ),
                          Text(
                            'Price/Night: \$${hotel['price']}',
                            style: const TextStyle(fontSize: 14),
                          ),
                          Text(
                            'Status: ${hotel['status']}',
                            style: const TextStyle(fontSize: 14, color: Colors.green),
                          ),
                          if (hotel['status'] == 'Available')
                            ElevatedButton(
                              onPressed: () {
                                // Handle booking action
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Booking ${hotel['name']}...')),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFD2F366), // Button color
                                padding: const EdgeInsets.symmetric(vertical: 10),
                              ),
                              child: const Text('Book'),
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
