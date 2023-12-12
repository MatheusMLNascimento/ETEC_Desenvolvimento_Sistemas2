import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Marcelo Pedreiro 2.0"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Meu nome é Yoshikage Kira,"),
            Text("Tenho 33 anos,"),
            SizedBox(height: 10),
            Text("Moro na parte leste da cidade de Morioh,"),
            Padding(padding: EdgeInsets.all(25)),
            Text("Não sou casado"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart, 
                  size: 50,
                  color: Colors.blue,),
                Icon(Icons.ac_unit_sharp),
                Icon(Icons.access_alarm),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
