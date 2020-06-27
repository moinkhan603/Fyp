import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class intro3 extends StatefulWidget {
  @override
  _intro3State createState() => _intro3State();
}

class _intro3State extends State<intro3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        new Container(

          decoration: new BoxDecoration(

            image: new DecorationImage(image: new AssetImage("assets/images/pic3.jpg",), fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 100,horizontal: 20),
          child: Text(" The environment is soothing and refreshing with cool fresh air to breathe.",  style:
          GoogleFonts.pacifico(
            textStyle: TextStyle(fontSize: 25
                ,color: Colors.black87),

          ),),
        ),


      ],),

    );
  }
}
