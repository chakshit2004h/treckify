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

  // Toggle variables
  bool _isLessExpensiveSelected = false;
  bool _isMostPopularSelected = false;
  bool _isBudgetTripSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Attach the key to Scaffold
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu,color: Colors.white,size: 30,),
          ),
        ),
        backgroundColor: const Color(0xFF141527), // Same background color
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF292B40),
              ),
              child: Row(
                children: [
                  Icon(Icons.account_circle_sharp,size: 120,color: Colors.white,),
                  SizedBox(width: 20,),
                  Text("Marry",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: "ibm"),)
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.white),
              title: const Text('Home', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> Home())); // Close the drawer
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
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ToggleButton(
                        title: "Less Expensive",
                        isSelected: _isLessExpensiveSelected,
                        onPressed: () {
                          setState(() {
                            _isLessExpensiveSelected = true;
                            _isMostPopularSelected = false;
                            _isBudgetTripSelected = false;
                          });
                        },
                      ),
                      ToggleButton(
                        title: "Most Popular",
                        isSelected: _isMostPopularSelected,
                        onPressed: () {
                          setState(() {
                            _isLessExpensiveSelected = false;
                            _isMostPopularSelected = true;
                            _isBudgetTripSelected = false;
                          });
                        },
                      ),
                      ToggleButton(
                        title: "Budget Trip",
                        isSelected: _isBudgetTripSelected,
                        onPressed: () {
                          setState(() {
                            _isLessExpensiveSelected = false;
                            _isMostPopularSelected = false;
                            _isBudgetTripSelected = true;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// toggle_button.dart
class ToggleButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onPressed;

  const ToggleButton({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFD2F366) : const Color(0xFF292B40),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            color: isSelected ? Colors.black : Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}