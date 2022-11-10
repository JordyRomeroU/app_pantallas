import 'package:flutter/material.dart';

class SuretyForm extends StatelessWidget {
  const SuretyForm({super.key});

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
}
