import 'dart:ui';
import 'package:ahec/pages/Singuppages/sinup2.dart';
import 'package:ahec/pages/home.dart';
import 'package:flutter/material.dart';

class singUPage extends StatefulWidget {
  const singUPage({Key? key}) : super(key: key);

  @override
  State<singUPage> createState() => _singUPageState();
}

class _singUPageState extends State<singUPage> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Scaffold(
          body:  SingleChildScrollView(
            child: BodyCode(),
          )
         ),
       ),
    );
  }
}

class BodyCode extends StatefulWidget {
  const BodyCode({Key? key}) : super(key: key);

  @override
  State<BodyCode> createState() => _BodyCodeState();
}

class _BodyCodeState extends State<BodyCode> {
  final userKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height,
        maxWidth: MediaQuery.of(context).size.width,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade700,
            Colors.blue.shade300,
          ],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(5, 5),
                  color: Color.fromARGB(100, 8, 91, 232),
                  spreadRadius: 0.1,
                  blurRadius: 5,
                ),
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: 340,
                decoration: BoxDecoration(
                    color: const Color(0xFFe7edeb),
                    borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text("March Intakes Offer. Flat 10% Off on all bookings.", style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),),
                ),
              ),
            ),
          ),
         const SizedBox(
           height: 20,
         ),
         Container(
          height: 600,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(5, 5),
                  color: Color.fromARGB(100, 8, 91, 232),
                  spreadRadius: 0.1,
                  blurRadius: 5,
                ),
                BoxShadow(
                  offset: Offset(-5, -5),
                  color: Color.fromARGB(100, 8, 91, 232),
                  spreadRadius: 0.1,
                  blurRadius: 5,
                ),
              ]
          ),
          child: Form(
            key: userKey,
            child: Column(
              children: [
                     ListTile(
                      leading: InkWell(
                          onTap: (){
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ),
                            );
                          },
                          child:  Container(
                              height: 50,
                              width: 50,
                              color: Colors.white,
                              child: const Icon(Icons.close, color: Colors.black,),
                            ),
                      ),
                       title: const Text("Place Your Order"),
                       subtitle: const Text("It's Fast, Secure & Confidential"),
                    ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 12, right: 12),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      helperText: 'Enter Your First Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,

                      ),
                      prefixIcon: const Icon(Icons.person, color: Colors.blueGrey,),
                      filled: true,
                      fillColor: const Color(0xFFe7edeb),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 12, right: 12),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      helperText: 'Enter Your Last Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,

                      ),
                      prefixIcon: const Icon(Icons.person, color: Colors.blueGrey,),
                      filled: true,
                      fillColor: const Color(0xFFe7edeb),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 12, right: 12),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Email',
                      helperText: 'Enter Your Email Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,

                      ),
                      prefixIcon: const Icon(Icons.email_outlined, color: Colors.blueGrey,),
                      filled: true,
                      fillColor: const Color(0xFFe7edeb),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 12, right: 12),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      helperText: 'Enter Your Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,

                      ),
                      prefixIcon: const Icon(Icons.phone, color: Colors.blueGrey,),
                      filled: true,
                      fillColor: const Color(0xFFe7edeb),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 78,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Sing2(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(Icons.arrow_forward, color: Colors.white,),

                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Next Page", style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]
      ),
    );
  }
}
