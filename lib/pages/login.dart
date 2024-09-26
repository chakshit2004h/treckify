import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:treckify/pages/home.dart';
import 'package:treckify/pages/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 18,
            child: Container(
              width: 350,
              height: 420,
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 35),),
                  const SizedBox(height: 15),
                  // Email TextField
                  SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Email TextField
                  SizedBox(
                    width: 300,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(child: Text("Log in",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),
                  const SizedBox(height: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const Home()));
                    },
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Login via Google",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(child: Text("Log out",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const Signup()));
                    },
                      child: const Text("Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.lightBlue),))

                ],
              ),
            ),
          ),
        ],
      ) ,
    );
  }
}
