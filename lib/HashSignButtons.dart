import 'package:flutter/material.dart';

class HashSignButtons extends StatefulWidget {
  const HashSignButtons({Key? key}) : super(key: key);

  @override
  _HashSignButtonsState createState() => _HashSignButtonsState();
}

class _HashSignButtonsState extends State<HashSignButtons> {
  bool _isHashing = false;
  bool _isSigning = false;

  void _hashData() {
    // Implement hash functionality here
    setState(() {
      _isHashing = true;
    });
  }

  void _signData() {
    // Implement sign functionality here
    setState(() {
      _isSigning = true;
    });
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Verification Message'),
        content: Text('Verification is successful.'),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Added to center the column
      children: [
        ElevatedButton(
          onPressed: _isHashing ? null : _hashData,
          child: Text('Hash'),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: _isSigning ? null : _signData,
          child: Text('Sign'),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Go Back'),
        ),
      ],
    );
  }
}
