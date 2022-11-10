import 'package:flutter/material.dart';
import 'package:pantallas/widgets/debtorFinalize.dart';
import 'package:pantallas/widgets/suretyFinalize.dart';

import '../widgets/Buttons.dart';
import '../widgets/personal_form.dart';

class containerButton extends StatelessWidget {
  const containerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      // padding: const EdgeInsets.all(0),
      children: [
        _listV(),
        const SizedBox(
          height:0,
        ),
        _buttons(),
      ],
    );
  }
  
  _listV() {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        color: Colors.white,
        height: 624.0,
        child: Center(
          child: Scrollbar(
          child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 20,
                child: Column(
                  children: [
                    ListTile(
                      // leading: const Icon(Icons.person),
                      title: const Text('Informacion',),
                      subtitle: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                                    SizedBox(height: 20),
                                    Text("Parentesco:"),
                                    SizedBox(height: 20),
                                    Text("Nombre Completo:"),
                                    SizedBox(height: 20),
                                    Text("Celular:"),
                                    SizedBox(height: 20),
                                    Text("Convencional:"),
                                    SizedBox(height: 20),
                                    Text("Dirección:"),
                                    SizedBox(height: 20),
                                    Text("Provincia:"),
                                    SizedBox(height: 20),
                                    Text("Ciudad:"),
                                    SizedBox(height: 20), 
                          ],
                        ),
                      ),
                    ),

                    ListTile(
                      title: const Text('Informacion'),
                      subtitle: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                                    SizedBox(height: 20),
                                    Text("Parentesco:"),
                                    SizedBox(height: 20),
                                    Text("Nombre Completo:"),
                                    SizedBox(height: 20),
                                    Text("Celular:"),
                                    SizedBox(height: 20),
                                    Text("Convencional:"),
                                    SizedBox(height: 20),
                                    Text("Dirección:"),
                                    SizedBox(height: 20),
                                    Text("Provincia:"),
                                    SizedBox(height: 20),
                                    Text("Ciudad:"),
                                    SizedBox(height: 20), 
                          ],
                        ),
                      ),
                    ),

                    ListTile(
                      title: const Text('Informacion'),
                      subtitle: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                                    SizedBox(height: 20),
                                    Text("Parentesco:"),
                                    SizedBox(height: 20),
                                    Text("Nombre Completo:"),
                                    SizedBox(height: 20),
                                    Text("Celular:"),
                                    SizedBox(height: 20),
                                    Text("Convencional:"),
                                    SizedBox(height: 20),
                                    Text("Dirección:"),
                                    SizedBox(height: 20),
                                    Text("Provincia:"),
                                    SizedBox(height: 20),
                                    Text("Ciudad:"),
                                    SizedBox(height: 20), 
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ),
        ),
      ),
      );
  }

  _buttons() {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        color: Colors.white,
        height: 140.0,
        child: Column(
          children: const [
            SizedBox(
              height: 10,
            ),
            addButoon(),
            SizedBox(
              height: 10,
            ),
            Next(),
          ],
        ),
      ),
      );
  }
}


class containerFinalize extends StatelessWidget {
  const containerFinalize({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      // padding: const EdgeInsets.all(0),
      children: [
        FinalizeForm(),
        const SizedBox(
          height:0,
        ),
        _buttonsFinalize(),
      ],
    );
  }
  
  _buttonsFinalize() {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        color: Colors.white,
        height: 140.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            suretyButton(),
            finalizeButton(),
          ],
        ),
      ),
      );
  }
}

class containersuretyFinalize extends StatelessWidget {
  const containersuretyFinalize({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      // padding: const EdgeInsets.all(0),
      children: [
        SuretyForm(),
        const SizedBox(
          height:0,
        ),
        _buttonsSuretyFinalize(),
      ],
    );
  }
  
  _buttonsSuretyFinalize() {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        color: Colors.white,
        height: 140.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            debtorButton(),
            finalizeSuretyButton(),
          ],
        ),
      ),
      );
  }
}