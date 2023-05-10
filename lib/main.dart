import 'package:capstone_1/generate_keys_page.dart';
import 'package:capstone_1/hash_document_page.dart';
import 'package:capstone_1/login_page.dart';
import 'package:capstone_1/sign_document_page.dart';
import 'package:capstone_1/upload_document_page.dart';
import 'package:capstone_1/HashSignButtons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Document Hashing App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/generate-keys': (context) => GenerateKeysPage(),
        '/upload-document': (context) => UploadDocumentPage(),
        '/hash-document': (context) => HashDocumentPage(),
        '/sign-document': (context) => SignDocumentPage(),
        '/hash': (context) => HashSignButtons(),
      },
    );
  }
}