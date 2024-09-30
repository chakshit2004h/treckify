import 'package:flutter/material.dart';
import 'package:treckify/pages/createcommunity.dart';

import 'home.dart';

class Communities extends StatefulWidget {
  const Communities({super.key});

  @override
  State<Communities> createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
                Navigator.push(context, MaterialPageRoute(builder: (context) => Communities())); // Handle communities tap
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
              children: [
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 175,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD2F366),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(child: Text("Join Community",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.5),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => Create_Community()));
                        },
                        child: Container(
                          width: 190,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFF292B40),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(child: Text("Create Community",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Material(
                  elevation: 15,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 330,
                    height: 380,
                    decoration: BoxDecoration(
                      color: const Color(0xFF292B40),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        ClipOval(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Image.asset(
                              "assets/images/uttarakhand.jpeg",
                              width: 120, // Set the width for the circular image
                              height: 120, // Set the height for the circular image
                              fit: BoxFit.cover, // Ensures the image covers the circle
                            ),
                          ),
                        ),
                        const Text("BackPackers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white,fontFamily: "ibm"),),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,left: 10.0),
                              child: Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF141527),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.blue,
                                  )
                                ),
                                child: const Center(child: Text("Solo Travel",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,left: 8.0),
                              child: Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF141527),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.blue,
                                    )
                                ),
                                child: const Center(child: Text("Hotels",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,left: 10.0),
                              child: Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF141527),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.blue,
                                    )
                                ),
                                child: const Center(child: Text("Resorts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,left: 8.0),
                              child: Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF141527),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.blue,
                                    )
                                ),
                                child: const Center(child: Text("Dining",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const Text("10000 Members",style: TextStyle(fontSize: 20,color: Colors.grey,),),
                        Container(
                          width: 330,
                          height: 47,
                          decoration: const BoxDecoration(
                            color: Color(0xFFD2F366),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                          ),
                          child: const Center(child: Text("Join Community",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
