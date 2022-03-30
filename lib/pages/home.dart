import 'dart:ui';
import 'package:ahec/models/DataList.dart';
import 'package:ahec/models/templtaelist.dart';
import 'package:ahec/pages/Singuppages/singup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String uid = "";
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
           backgroundColor: Colors.blueAccent,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.green.shade400,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: const Icon(Icons.call, color: Colors.white,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: const Icon(Icons.mail, color: Colors.white,),
                ),
              ),
            ],
          ),
          drawer: Drawer(),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            child: Scaffold(
              backgroundColor: Colors.grey.shade200,
              appBar: AppBar(
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 20,
                      width: 100,
                      child:  ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => singUPage(),
                            ),
                          );
                        },
                        child: Text("Order Now"),
                      ),
                    ),
                  ),
                ],
                backgroundColor: Colors.white,
                elevation: 2,
                title: Center(child: Container(
                    height: 65,
                    width:65,
                    child: Image.asset("assets/images/AHEC.png", scale: 1,))),
              ),
              body: SingleChildScrollView (
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageSlideshow(
                        width: double.infinity,
                        height: 100,
                        initialPage: 0,
                        indicatorColor: Colors.blue,
                        indicatorBackgroundColor: Colors.grey,
                        children: [
                          Image.asset(
                            'assets/TempImage/Template/1-new.png',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/TempImage/Template/2-new.png',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/TempImage/Template/3-new.png',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/TempImage/Template/4-new.png',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/TempImage/Template/5-new.png',
                            fit: BoxFit.cover,
                          ),
                        ],
                        onPageChanged: (value) {
                          print('Page changed: $value');
                        },
                        autoPlayInterval: 3000,
                        isLoop: true,
                      ),
                      Container(
                        height: 250,
                        width: double.infinity,
                        child: Template(),
                      ),
                      BodyCode(),
                    ],
                  ),
                ),
              ),
          ),
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
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: JobCart.items.length,
      itemBuilder: (context, index) {
        final item = JobCart.items[index];
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
            elevation: 5,
            shadowColor: Colors.lightBlue,
            child: Container(
              height: 420,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                      width: 1,
                      color: Colors.deepOrange)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 20),
                    child: Text(item.name, style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w300,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Image.asset(item.image),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all( 10.0),
                    child: Text(item.service, style: const TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w300,
                      fontSize: 25
                     ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Template extends StatelessWidget {
  const Template({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: TemplateList.temps.length,
        itemBuilder: (context, index){
      final temp = TemplateList.temps[index];
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shadowColor: Colors.lightBlue,
          elevation: 5,
          child: Container(
          height: double.infinity,
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Container(
                    height: 80,
                    width: 80,
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(temp.image),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(temp.name, style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(temp.service, style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  width: 1,
                    color: Colors.deepOrange)
            ),
          ),
        ),
      );
    });
  }
}
