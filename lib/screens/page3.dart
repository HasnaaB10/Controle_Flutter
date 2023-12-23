import 'dart:math';
import 'package:controle_functions/screens/menu.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<int> numbers = List.generate(21, (index) => index - 10);
  int selectedNumber = -10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sigmoid"),
      ),
      drawer: Menu(),
      body: Column(
        children: [
          // Ajout de l'image avec redimensionnement
          Image.asset(
            'assets/images/sigmoid.png',
            width: double.infinity, // Ajuster la largeur selon vos besoins
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
          // Informations sur le nombre sélectionné et le résultat de la fonction Sigmoid
          Text(
            "Nombre sélectionné : $selectedNumber",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 16),
          Text(
            "Résultat de la fonction Sigmoid : ${sigmoidFunction(selectedNumber).toStringAsFixed(4)}",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  // Fonction Sigmoid
  double sigmoidFunction(int x) {
    return 1 / (1 + exp(-x));
  }
}

void main() {
  runApp(MaterialApp(
    home: Page3(),
  ));
}