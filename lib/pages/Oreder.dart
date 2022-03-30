import 'package:ahec/routes/routes.dart';
import 'package:flutter/material.dart';

class orderPage extends StatelessWidget {
  const orderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: IconButton(
                    onPressed: () { Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    icon: Icon(Icons.arrow_back),
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
