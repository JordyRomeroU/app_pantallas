import 'package:flutter/material.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(''),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: Column(
                children: [
                  Expanded(child:
                  Image.asset(''),
                  ),
                  const SizedBox(height: 10.0,),
                ],
              )
              ),
          ],
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: const <Widget>[
          SizedBox(
            height: 50,
          ),
          CardSlider(),
        ],
      ),
    );
  }
}

class CardSlider extends StatelessWidget {
  const CardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.person, color: Colors.blue,),
            title: Text("Nombre y Apellido"),
            
          ),
          ListTile(
            title: Text('Saldo Disponible', textAlign: TextAlign.right),
            subtitle: Text('300', textAlign: TextAlign.right),
          ),
        ],
      ),
    );
  }
}