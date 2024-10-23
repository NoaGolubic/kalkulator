import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Kalkulator prosječnog dnevnog unosa kalorija",
      home: MainApp(),
    );
  }
}
//final int starost = int.parse(starostController.text);
//final int visina = int.parse(visinaController.text);
//final int tezina = int.parse(visinaController.text);
class Potvrdi extends StatelessWidget {
  const Potvrdi({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          debugPrint("GUMB je pritisnut");

          double rez;
          
          if (IzabranSpol == "Muško") {
            //formula za musko
            rez = 10* tezina +6.25 *+ visina - 5* starost +5;
            setState((){
              _kalorije = rez;
            });
          } else if (IzabranSpol == "Žensko") {
            //Formula za žensko
            rez = 10* tezina +6.25 *+ visina - 5* starost -161;
            setState((){
              _kalorije = rez;
            });
          } else {
            rez = 0;
          }
        },
        child: const Text("Potvrdi"));
  }
}

class MojObrazac extends StatelessWidget {
  const MojObrazac({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ));
  }
}
