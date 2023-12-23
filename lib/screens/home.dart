import 'package:flutter/material.dart';
import 'package:controle_functions/screens/menu.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Menu(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            // margin: EdgeInsets.all(40),
            //width: double.infinity,
           child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Image.asset(
              'assets/images/prof.png',
                width: double.infinity,
                fit: BoxFit.cover
            ),
           ),
          ),
          Positioned(
            top: 5,
              child: Text(
              "EMSI",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Changer la couleur du texte selon votre besoin
              ),
            ),
          ),

        ],
      ),
    );
  }
}