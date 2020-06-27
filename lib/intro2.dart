import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class intro2 extends StatefulWidget {
  @override
  _intro2State createState() => _intro2State();
}

class _intro2State extends State<intro2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        new Container(

          decoration: new BoxDecoration(

            image: new DecorationImage(image: new AssetImage("assets/images/pic2.jpg",), fit: BoxFit.cover,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 100,horizontal: 20),
          child: Text("The reason being the excellent brunch on Sunday's morning on Monal Restaurant",  style:
          GoogleFonts.pacifico(
            textStyle: TextStyle(fontSize: 25
                ,color: Colors.black87),

          ),),
        ),


      ],),

    );
  }
}
