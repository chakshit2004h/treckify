import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Menu Icon
                      IconButton(
                        icon: const Icon(Icons.menu, color: Colors.white),
                        onPressed: () {},
                      ),
                      // Search Field with Button
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
                      // Ring Icon
                      IconButton(
                        icon: const Icon(Icons.notifications, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
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
                const SizedBox(height: 30,),
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
                        // Centering only the image
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20), // Circular borders
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
                        // Text remains aligned as before
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
                          width:230,
                          height: 36,
                          decoration: const BoxDecoration(
                            color: Color(0xFFD2F366),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                          ),
                          child: const Center(child: Text("Starting from 19600",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
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
                        // Centering only the image
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20), // Circular borders
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
                        // Text remains aligned as before
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
                          width:230,
                          height: 36,
                          decoration: const BoxDecoration(
                            color: Color(0xFFD2F366),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                          ),
                          child: const Center(child: Text("Starting from 19580",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
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
                        // Centering only the image
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20), // Circular borders
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
                        // Text remains aligned as before
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
                          width:230,
                          height: 36,
                          decoration: const BoxDecoration(
                            color: Color(0xFFD2F366),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                          ),
                          child: const Center(child: Text("Starting from 20600",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)),
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
