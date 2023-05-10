import 'package:flutter/material.dart';

class KeyGenerationPage extends StatelessWidget {
  final String documentHash;

  KeyGenerationPage({required this.documentHash});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate Keys'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Document Hash: $documentHash'),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Handle document hash logic
                },
                child: Text('Hash'),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle private key logic
                    },
                    child: Text('Private Key'),
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text('Public Key'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}