import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toast/toast.dart';
import 'login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SecurityCheck extends StatefulWidget {
  @override
  _SecurityCheckState createState() => _SecurityCheckState();
}

class _SecurityCheckState extends State<SecurityCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(




        backgroundColor: Color(0xffffffff),
        body: (


            ListView(
              children: <Widget>[
                Stack(
                  children: <Widget>[
//    ClipPath(
//    clipper: WaveClipper2(),
//    child: Container(
//    child: Column(),
//    width: double.infinity,
//    height: 300,
//    decoration: BoxDecoration(
//    gradient: LinearGradient(
//    colors: [Color(0xffFEDF77), Color(0xffFEDF77)])),
//    ),
//    ),
//    ClipPath(
//    clipper: WaveClipper3(),
//    child: Container(
//    child: Column(),
//    width: double.infinity,
//    height: 300,
//    decoration: BoxDecoration(
//    gradient: LinearGradient(
//    colors: [Color(0xff000000), Color(0xff000000)])),
//    ),
//    ),
                    ClipPath(
                      clipper: WaveClipper1(),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 40,
                            ),
                            Icon(
                              Icons.location_on,
                              color: Color(0xffFDCC17),
                              size: 60,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(

                              "Follow Me ",style: GoogleFonts.pacifico(
                              textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 40
                                  ,color: Colors.white),

                            ),

                            ),
                          ],
                        ),
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xff000000), Color(0xff000000)])),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                Center(child: Text("Check Your Email and Enter Security Code ",
                style: TextStyle(fontSize: 18,color: Colors.black87,fontWeight:FontWeight.bold ),
                )
                ),
                Card(
                  margin: EdgeInsets.only(left: 30, right:30, top:30),
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: TextField(
                    onChanged: (value){
                      print(value);

                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_open, color: Colors.black26,),

                        hintText: "Enter Security Code",
                        hintStyle: TextStyle(color: Colors.black),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(

                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),



                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          color: Color(0xff1E90FF)),
                      child: FlatButton(

                        child: Text(
                          "Confirm",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        ),
                        onPressed: () async
                        {
Toast.show("Successfully Registered", context,backgroundColor: Colors.green,
);

Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => loginScreen()),
);



//    if(email==null||password==null)
//    {
//    print('xxx');
//    Toast.show(
//    "feilds cannot be empty",
//
//    context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM,backgroundColor:Colors.red);
//
//    }
//    else {
//    setState(() {
//    showSpinner = true;
//    });
//    try {
//    final newuser = await _auth.signInWithEmailAndPassword
//    (email: email, password: password);
//    if (newuser != null) {
//    Navigator.push(
//    context,
//    MaterialPageRoute(builder: (context) => wlcm()),
//    );
//    }
//    setState(() {
//    showSpinner = false;
//    });
//    }
//    catch (e) {
//    print(e);
//    setState(() {
//    showSpinner = false;
//    });
//    }
//    }
//




                        },
                      ),
                    )),

                SizedBox(height: 40,),

              ],
            )));



  }
}

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 29 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 60);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
