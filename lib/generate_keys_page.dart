import 'dart:convert';
import 'dart:math';

import 'package:capstone_1/upload_document_page.dart';
import 'package:flutter/material.dart';

class GenerateKeysPage extends StatefulWidget {
  @override
  _GenerateKeysPageState createState() => _GenerateKeysPageState();
}

class _GenerateKeysPageState extends State<GenerateKeysPage> {
  String privateKey = '';

  String generatePrivateKey() {
    final random = Random.secure();
    final values = List<int>.generate(16, (i) => random.nextInt(255));
    return base64Url.encode(values);
  }

  @override
  void initState() {
    super.initState();
    privateKey = generatePrivateKey();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate Keys'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Text(
              'Generate Keys',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      privateKey = generatePrivateKey();
                    });
                  },
                  child: Text('Private Key'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UploadDocumentPage(),
                      ),
                    );
                  },
                  child: Text('Public Key'),
                ),
              ],
            ),
            SizedBox(height: 50),
            Text(
              'Private Key: $privateKey',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UploadDocumentPage(),
                  ),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}