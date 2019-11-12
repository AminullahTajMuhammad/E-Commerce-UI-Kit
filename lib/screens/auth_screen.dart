import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: init(),
    );
  }

  init() {
    return Container(
      child: Center(
        child: Text("Hello Auth Screen"),
      )
    );
  }
}