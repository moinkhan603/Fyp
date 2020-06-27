import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class intro1 extends StatefulWidget {
  @override
  _intro1State createState() => _intro1State();
}

class _intro1State extends State<intro1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        new Container(

          decoration: new BoxDecoration(

            image: new DecorationImage(image: new AssetImage("assets/images/pic1.jpg",), fit: BoxFit.cover,
            ),
          ),

        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 100,horizontal: 20),
          child: Text("one of the longest hiking trails in Margalla Hills Islamabad",  style:
          GoogleFonts.pacifico(
            textStyle: TextStyle(fontSize: 25
                ,color: Colors.white),

          ),),
        ),

      ],),

    );
  }
}
