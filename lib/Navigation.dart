import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'maps.dart';
class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.95),
        body:

        Stack(


          children: <Widget>[

            new Container(

              decoration: new BoxDecoration(

                image: new DecorationImage(image: new AssetImage("assets/images/bg.jpg",), fit: BoxFit.cover,
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.only(top:40.0),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  SizedBox(
                    height: 50,
                    child: Text("Select Trails", style:  GoogleFonts.ubuntu(
                      textStyle: TextStyle(fontSize: 25
                          ,color: Colors.black87),

                    ),),
                  ),
                  Center(
                    child: new DropdownButton<String>(
                      iconEnabledColor: Colors.white,


                      items: <String>['Trail 3',
                        'Trail 5 (coming soon)',
                      ].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),

                        );
                      }).toList(),
                      onChanged: (val) {

                        print(val);

                      },


                    ),







                  ),


                  SizedBox(height: 20,),


                  SizedBox(
                    height: 50,
                    child: Text("Select Path", style:  GoogleFonts.ubuntu(
                      textStyle: TextStyle(fontSize: 25
                          ,color: Colors.black87),

                    ),),
                  ),
                  new DropdownButton<String>(
                    iconEnabledColor: Colors.white,
                    items: <String>['Fire Line   ',
                      'Normal path                ',
                    ].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),

                      );
                    }).toList(),
                    onChanged: (val) {

                      print(val);

                    },


                  ),


                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 100),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xffFDCC17)),
                        child: FlatButton(

                          child: Text(
                            "Lets Go",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          onPressed: () async
                          {
                            CircularProgressIndicator(backgroundColor: Colors.black87,);
                            new Future.delayed(

                                const Duration(seconds: 1),
                                    () => Navigator.push(

                                  context,
                                  MaterialPageRoute(builder: (context) => Maps()),

                                ));

//                        Navigator.push(
//                          context,
//                          MaterialPageRoute(builder: (context) => Maps()),
//                        );



                          },
                        ),
                      )),



                ],),
            ),
          ],

        ),


      ),
    );
  }
}
