import 'dart:math';

import 'package:controle_functions/screens/menu.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<int> numbers = List.generate(21, (index) => index - 10);
  int selectedNumber = -10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Relu"),
      ),
      drawer: Menu(),
      body: Column(
        children: [
          // Ajout de l'image
          Image.asset(
            'assets/images/relu.png',
            //height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16),
          // Liste horizontale
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedNumber = numbers[index];
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      color: selectedNumber == numbers[index]
                          ? Colors.green
                          : Colors.white,
                      alignment: Alignment.center,
                      child: Text(
                        numbers[index].toString(),
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16),
          // Informations sur le nombre sélectionné et le résultat de la fonction Relu
          Text(
            "Nombre sélectionné : $selectedNumber",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 16),
          Text(
            "Résultat de la fonction Relu : ${reluFunction(selectedNumber)}",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  int reluFunction(int x) {
    return max(0, x);
  }
}

void main() {
  runApp(MaterialApp(
    home: Page1(),
  ));
}