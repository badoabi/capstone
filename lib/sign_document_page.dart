import 'package:flutter/material.dart';

class SignDocumentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Document'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: 'Document Hash'),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(hintText: 'Signature'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Handle document signature verification logic
              },
              child: Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}