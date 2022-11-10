import 'package:flutter/material.dart';
import 'package:pantallas/pages/containers.dart';
import 'package:pantallas/pages/prueba.dart';
import 'package:pantallas/widgets/personal_form.dart';

//actualizacion camara 

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('REFERENCIAS PERSONALES')),
        ),
        body: const containerFinalize()
        // const containerButton(),
      ),
    );
  }
}





