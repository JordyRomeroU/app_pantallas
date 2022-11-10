import 'package:flutter/material.dart';
import 'package:pantallas/pages/containers.dart';
import 'package:pantallas/widgets/personal_form.dart';

import '../main.dart';
import '../pages/prueba.dart';

class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 50,
            width: 150,
            child: TextButton(
              onPressed: () async {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const containerFinalize(),
                // ));
              }, 
              child: const Text('SIGUIENTE'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.green),
                  )
                )
              ),
              ),
          ),
        ],
      ),
    );
  }
}

class addButoon extends StatelessWidget {
  const addButoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox.fromSize(
  size: const Size(56, 56), // button width and height
  child: ClipOval(
    child: Material(
      color: Colors.blue, // button color
      child: InkWell(
        splashColor: Colors.blue, // splash color
        onTap: () {
          showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        scrollable: true,
                        title: const Text(
                          'Agregar Referencia Personal',
                        ),
                        content: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: personalForm(),
                        ),
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              cancelButoon(),
                              checkButoon(),
                            ],
                          )
                        ],
                      );
                    });
        }, // button pressed
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.add, color: Colors.white,), // icon
          ],
        ),
      ),
    ),
  ),
)
        ],
      ),
    );
  }
}

class checkButoon extends StatelessWidget {
  const checkButoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox.fromSize(
  size: const Size(56, 56), // button width and height
  child: ClipOval(
    child: Material(
      color: Colors.green, // button color
      child: InkWell(
        splashColor: Colors.green, // splash color
        onTap: () {}, // button pressed
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.check, color: Colors.white,), // icon
          ],
        ),
      ),
    ),
  ),
)
        ],
      ),
    );
  }
}

class cancelButoon extends StatelessWidget {
  const cancelButoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox.fromSize(
  size: const Size(56, 56), // button width and height
  child: ClipOval(
    child: Material(
      color: Colors.red, // button color
      child: InkWell(
        splashColor: Colors.red, // splash color
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MyApp(),
                ));
        }, // button pressed
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.close, color: Colors.white,), // icon
          ],
        ),
      ),
    ),
  ),
)
        ],
      ),
    );
  }
}

///finalizacion
class suretyButton extends StatelessWidget {
  const suretyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton.icon(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.blue),
                  )
                )
              ),
            onPressed: () async {
            },
            icon: const Icon(Icons.person, size: 30),
            label: Text('GARANTE'),
          ),
        ],
      ),
    );
  }
}

class finalizeButton extends StatelessWidget {
  const finalizeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton.icon(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.green),
                  )
                )
              ),
            onPressed: () async {
              // if (formKey.currentState!.validate()) {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => const Profile()),
              //   );
              // }
            },
            icon: const Icon(Icons.check, size: 30),
            label: Text('FINALIZAR'),
          ),
        ],
      ),
    );
  }
}

class debtorButton extends StatelessWidget {
  const debtorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton.icon(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.blue),
                  )
                )
              ),
            onPressed: () async {
            },
            icon: const Icon(Icons.person, size: 30),
            label: Text('DEUDOR'),
          ),
        ],
      ),
    );
  }
}

class finalizeSuretyButton extends StatelessWidget {
  const finalizeSuretyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton.icon(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.green),
                  )
                )
              ),
            onPressed: () async {
              // if (formKey.currentState!.validate()) {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => const Profile()),
              //   );
              // }
            },
            icon: const Icon(Icons.check, size: 30),
            label: Text('FINALIZAR'),
          ),
        ],
      ),
    );
  }
}