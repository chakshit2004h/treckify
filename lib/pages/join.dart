import 'package:flutter/material.dart';
import 'package:treckify/pages/communities.dart';

class Join_community extends StatefulWidget {
  const Join_community({super.key});

  @override
  State<Join_community> createState() => _Join_communityState();
}

class _Join_communityState extends State<Join_community> {
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
            color: const Color(0xFF141527),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Rounding the image edges by 20 pixels
                    child: Image.asset(
                      "assets/images/chandratal.jpg",
                      width: 350,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 30.0),
                      child: ClipOval(child: Image.asset("assets/images/uttarakhand.jpeg",width: 50,height: 50,),),
                    ),
                    const SizedBox(width: 20,),
                    const Text("Backapckers United",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "ibm"),),
                    const SizedBox(width: 20,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Communities()));
                      },
                      child: Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD2F366),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(child: Text("Join",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),)
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 20.0),
                  child: const Text("Featured",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25,),),
                ),
                const SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 20.0),
                        child: Material(
                          elevation: 15,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 220,
                            height: 250,
                            decoration: BoxDecoration(
                              color: const Color(0xFF292B40),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Image.asset("assets/images/Wilson-Point.webp"),
                                const SizedBox(height: 10,),
                                const Text("In the hills of mabaleshwar",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white,),),
                                const SizedBox(height: 10,),
                                const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: Icon(Icons.account_circle_sharp,size: 40,color: Colors.white,),
                                    ),
                                    SizedBox(width: 10,),
                                    Text("Alexa Zeonder",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 20.0),
                        child: Material(
                          elevation: 15,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 220,
                            height: 250,
                            decoration: BoxDecoration(
                              color: const Color(0xFF292B40),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Image.asset("assets/images/Wilson-Point.webp"),
                                const SizedBox(height: 10,),
                                const Text("In the hills of mabaleshwar",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white,),),
                                const SizedBox(height: 10,),
                                const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: Icon(Icons.account_circle_sharp,size: 40,color: Colors.white,),
                                    ),
                                    SizedBox(width: 10,),
                                    Text("Alexa Zeonder",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 20.0),
                        child: Material(
                          elevation: 15,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 220,
                            height: 250,
                            decoration: BoxDecoration(
                              color: const Color(0xFF292B40),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Image.asset("assets/images/Wilson-Point.webp"),
                                const SizedBox(height: 10,),
                                const Text("In the hills of mabaleshwar",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white,),),
                                const SizedBox(height: 10,),
                                const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: Icon(Icons.account_circle_sharp,size: 40,color: Colors.white,),
                                    ),
                                    SizedBox(width: 10,),
                                    Text("Alexa Zeonder",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,left: 20.0),
                  child: Material(
                    elevation: 15,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 220,
                      height: 250,
                      decoration: BoxDecoration(
                        color: const Color(0xFF292B40),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/images/Wilson-Point.webp"),
                          const SizedBox(height: 10,),
                          const Text("In the hills of mabaleshwar",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white,),),
                          const SizedBox(height: 10,),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Icon(Icons.account_circle_sharp,size: 40,color: Colors.white,),
                              ),
                              SizedBox(width: 10,),
                              Text("Alexa Zeonder",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ],
                      ),
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
