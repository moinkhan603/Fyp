import 'package:flutter/material.dart';
class HomeScrren extends StatefulWidget {
  @override
  _HomeScrrenState createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.black87,
      actions: <Widget>[
        Icon(Icons.fiber_manual_record)

      ],
      ),

    );
  }
}
