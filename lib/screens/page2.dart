import 'dart:math';
import 'package:controle_functions/screens/menu.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<int> numbers = List.generate(21, (index) => index - 10);
  int selectedNumber = -10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tanh"),
      ),
      drawer: Menu(),
      body: Column(
        children: [
          // Ajout de l'image avec redimensionnement
          Image.asset(
            'assets/images/tanh.png',
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
          // Informations sur le nombre sélectionné et le résultat de la fonction Tanh
          Text(
            "Nombre sélectionné : $selectedNumber",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 16),
          Text(
            "Résultat de la fonction Tanh : ${tanhFunction(selectedNumber).toStringAsFixed(4)}",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  // Fonction Tanh
  double tanhFunction(int x) {
    return (exp(x) - exp(-x)) / (exp(x) + exp(-x));
  }
}

void main() {
  runApp(MaterialApp(
    home: Page2(),
  ));
}