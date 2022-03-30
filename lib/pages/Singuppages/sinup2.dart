
import 'dart:ui';
import 'package:ahec/pages/Singuppages/singup.dart';
import 'package:ahec/pages/home.dart';
import 'package:flutter/material.dart';

class Sing2 extends StatelessWidget {
  const Sing2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: SingleChildScrollView(
          child: BodyCode(),
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

  String dropdownValue = 'One';
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
      child: Center(
        child: Container(
          height: 600,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text("Place Your Order", style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w300,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 12, right: 12),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Module Code',
                        helperText: 'Enter Module Code',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,

                        ),
                        prefixIcon: Icon(Icons.code_rounded, color: Colors.blueGrey,),
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
                        labelText: 'Module Name',
                        helperText: 'Enter Module Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,

                        ),
                        prefixIcon: Icon(Icons.view_module, color: Colors.blueGrey,),
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

                      minLines: 1,
                      maxLines: null,
                      textInputAction: TextInputAction.newline,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        labelText: 'Message',
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        helperText: 'Enter Message Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,

                        ),
                        filled: true,
                        fillColor: const Color(0xFFe7edeb),
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
                                builder: (context) => singUPage(),
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
                            child: const Icon(Icons.arrow_back, color: Colors.white,),

                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: (){

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
                      ],
                    )
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
