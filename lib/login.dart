import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toast/toast.dart';
import 'CRUD.dart';
import 'signup.dart';
import 'Home.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool showSpinner=false;
  String email;
  String password;
  final _auth=FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        backgroundColor: Color(0xffffffff),
    body: ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: (


      
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
      Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Material(
      elevation: 4.0,
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: TextField(
      onChanged: (String value){
      email=value.trim();

      },
      cursorColor: Colors.blue,
      decoration: InputDecoration(
      hintText: "Email",
      prefixIcon: Material(
      elevation: 0,
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: Icon(
      Icons.email,
      color: Colors.black,
      ),
      ),
      border: InputBorder.none,
      contentPadding:
      EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
      ),
      ),
      ),
      SizedBox(
      height: 20,
      ),
      Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Material(
      elevation: 4.0,
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: TextField(
      obscureText: true,
      onChanged: (String value){
      password=value.trim();
      },
      cursorColor: Colors.blue,
      decoration: InputDecoration(
      hintText: "Password",
      prefixIcon: Material(
      elevation: 0,
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: Icon(
      Icons.lock,
      color: Colors.black,
      ),
      ),
      border: InputBorder.none,
      contentPadding:
      EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
      ),
      ),
      ),
      SizedBox(
      height: 25,
      ),
      Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(100)),
      color: Color(0xff1E90FF)),
      child: FlatButton(

      child: Text(
      "Login",
      style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 18),
      ),
      onPressed: () async
      {



        if(email==null || password==null){
          Fluttertoast.showToast(
            msg: "Fields cannot be empty",

          );
          return;
        }
        if(email.contains("@")==false)
        {

          print(email.contains("@"));
          Fluttertoast.showToast(
            msg: "Email not valid",

          );
          return;
        }

        if(email!=null&&password!=null)
        {
          setState(() {
            showSpinner=true;
          });

          try {
            FirebaseUser newuser = (await _auth
                .signInWithEmailAndPassword(
                email: email, password: password)).user;

            if (newuser != null&&newuser.isEmailVerified==true) {

              CRUD.email=email;
              CRUD.addData();
//              CRUD.password=password;

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScrren()),
              );
            }
            else{

             Fluttertoast.showToast(msg: "Please Verify Your Email.",gravity: ToastGravity.CENTER);


            }
            setState(() {
              showSpinner = false;
            });
          }
          catch(e){
            print(e);

            Fluttertoast.showToast(msg: "Incorrect email or password"
                ,gravity: ToastGravity.CENTER);




            setState(() {
              showSpinner = false;
            });
          }

        }









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
      Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Text("Don't have an Account ? ", style: TextStyle(color:Colors.black,fontSize: 12 ,fontWeight: FontWeight.normal),),
      GestureDetector
      (
      onTap: () {

      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignupScreen()));



      },

      child: Text("Sign Up ", style: TextStyle(color:Colors.blueAccent, fontWeight: FontWeight.w500,fontSize: 12, decoration: TextDecoration.underline ))),

      ],
      )
      ],
      )),
    ));
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

class WaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 15 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 40);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 30);
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

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * .7, size.height - 40);
    var firstControlPoint = Offset(size.width * .25, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 45);
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