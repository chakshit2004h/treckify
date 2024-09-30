import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Define a GlobalKey for the Scaffold
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Attach the key to Scaffold
      appBar: AppBar(
        backgroundColor: const Color(0xFF141527), // Same background color
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                // Use the Scaffold key to open the drawer
                _scaffoldKey.currentState?.openDrawer();
              },
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.search),
                        color: Colors.black, // Search button color
                        onPressed: () {
                          // Handle search action
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF292B40), // Background color
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF292B40),
              ),
              child: const Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: "ibm",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.white),
              title: const Text('Home', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.group, color: Colors.white),
              title: const Text('Communities', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Handle communities tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.feed, color: Colors.white),
              title: const Text('Feed', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Handle feed tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_pin_circle, color: Colors.white),
              title: const Text('Travel Buddy', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Handle travel buddy tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.map, color: Colors.white),
              title: const Text('Travel Guide', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Handle travel guide tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.hotel, color: Colors.white),
              title: const Text('Hotels', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Handle hotels tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.info, color: Colors.white),
              title: const Text('About', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Handle about tap
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF141527),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Hi Marry,",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "ibm",
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Easy Visa Destination",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFD2F366),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0),
                  child: Container(
                    width: 230,
                    height: 270,
                    decoration: BoxDecoration(
                      color: const Color(0xFF292B40),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Image.asset(
                                "assets/images/bali_img.jpeg",
                                width: 200,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 8.0),
                          child: Text(
                            "BALI",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: "ibm",
                            ),
                          ),
                        ),
                        Container(
                          width: 230,
                          height: 36,
                          decoration: const BoxDecoration(
                            color: Color(0xFFD2F366),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Starting from 19600",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0),
                  child: Container(
                    width: 230,
                    height: 270,
                    decoration: BoxDecoration(
                      color: const Color(0xFF292B40),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Image.asset(
                                "assets/images/dubai.jpeg",
                                width: 200,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 8.0),
                          child: Text(
                            "DUBAI",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: "ibm",
                            ),
                          ),
                        ),
                        Container(
                          width: 230,
                          height: 36,
                          decoration: const BoxDecoration(
                            color: Color(0xFFD2F366),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Starting from 19580",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0),
                  child: Container(
                    width: 230,
                    height: 270,
                    decoration: BoxDecoration(
                      color: const Color(0xFF292B40),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Image.asset(
                                "assets/images/maldives-villa-piles-on-water.webp",
                                width: 200,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 8.0),
                          child: Text(
                            "MALDIVES",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: "ibm",
                            ),
                          ),
                        ),
                        Container(
                          width: 230,
                          height: 36,
                          decoration: const BoxDecoration(
                            color: Color(0xFFD2F366),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Starting from 15000",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
