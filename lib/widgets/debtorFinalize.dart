import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class FinalizeForm extends StatefulWidget {
  const FinalizeForm({super.key});

  @override
  State<FinalizeForm> createState() => _PageFinalizeForm();
}

class _PageFinalizeForm extends State<FinalizeForm> {

  File? _image;

  Future getImage(ImageSource source) async {
    try {

    final image = await ImagePicker().pickImage(source: source);
    if( image == null ) return;

    // final imageTemporary = File(image.path);
    final imagePermanent = await saveFilePermanently(image.path);

    setState(() {
      this._image = imagePermanent;
    });
    } on PlatformException catch (e){
      print('No se pudo elegir la imagen: $e');
    }
  }

  Future<File> saveFilePermanently(String imagePath) async{
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        color: Colors.white,
        height: 624.0,
        child: Center(
          child: Scrollbar(
          child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("XXXXXXXXXX"),
                          IconButton(
                          icon: Icon(Icons.camera_alt),
                          onPressed:(){
                            _showSelectionDialog(context);
                          } 
                        ),
                        ],
                      ),
                      const SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text("XXXXXXXXXX"),
                          IconButton(
                          icon: Icon(Icons.camera_alt),
                          onPressed: null,
                        ),
                        ],
                      ),
                      const SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text("XXXXXXXXXX"),
                          IconButton(
                          icon: Icon(Icons.camera_alt),
                          onPressed: null,
                        ),
                        ],
                      ),
                      const SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text("XXXXXXXXXX"),
                          IconButton(
                          icon: Icon(Icons.camera_alt),
                          onPressed: null,
                        ),
                        ],
                      ),
                      const SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text("XXXXXXXXXX"),
                          IconButton(
                          icon: Icon(Icons.camera_alt),
                          onPressed: null,
                        ),
                        ],
                      ),
                      const SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text("XXXXXXXXXX"),
                          IconButton(
                          icon: Icon(Icons.camera_alt),
                          onPressed: null,
                        ),
                        ],
                      ),
            ],
          ),
        ),
        ),
        ),
      ),
      );
  }
  
  Future<void> _showSelectionDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text("¿Desde dónde quieres tomar una foto?"),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    _image != null ? Image.file(_image!, width: 250, height: 250, fit: BoxFit.cover) : Image.network('https://cdn.icon-icons.com/icons2/272/PNG/512/Camera_Moto_30013.png',width: 250, height: 250),
                    Row(
                      children: [
                        const Icon(Icons.image_outlined),
                        GestureDetector(
                          child: const Text("Galeria",),
                          onTap: () {
                            getImage(ImageSource.gallery);
                          },
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.all(8.0)),
                    Row(
                      children: [
                        const Icon(Icons.camera),
                        GestureDetector(
                          child: const Text("Camara"),
                          onTap: () {
                            getImage(ImageSource.camera);
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ));
        });
  }
}