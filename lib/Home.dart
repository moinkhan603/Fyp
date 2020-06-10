import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
class HomeScrren extends StatefulWidget {
  @override
  _HomeScrrenState createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.black87,
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: new Icon(Icons.person,color: Colors.white),
            title: new Text('Profile',style: TextStyle(color: Colors.white)),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: new Icon(Icons.location_on,color: Colors.white,),
            title: new Text('Navigation',style: TextStyle(color: Colors.white),),
          ),

        ],
      ),

      appBar: AppBar(backgroundColor: Colors.black87,title:Text(

        "Follow Me ",style: GoogleFonts.pacifico(
        textStyle: TextStyle(fontSize: 30
            ,color: Colors.white),

      ),

      ),
      centerTitle: true,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: FaIcon(FontAwesomeIcons.powerOff,)),
        ),

      ],
      ),

      body: Column(children: <Widget>[


        Center(child: Text(

        "Hi, Username ",style: GoogleFonts.pacifico(
          textStyle: TextStyle(fontSize: 30
              ,color: Colors.black87),

        ),





      )),
    Container(
      margin: EdgeInsets.only(top: 25),
      height: 400,
      width: double.infinity,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection:Axis.horizontal ,
        children: <Widget>[
          buildCard(),
          buildCard1(),
          buildCard2(),
        ],



      ),
    ),


      ],),





    );
  }

  Card buildCard() {
    return Card(
          margin: EdgeInsets.all(10),
          elevation: 10,
          color: Colors.white,

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Container(
                height: 350,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[


//    Image.asset(img
//    ,width: 80,
//    height: 80,
//    ),
                    Text("Achievements", style:  GoogleFonts.pacifico(
                      textStyle: TextStyle(fontSize: 30
                          ,color: Colors.black87),

                    ),),
                      SizedBox(height: 10,),
                      new CircularPercentIndicator(
                        radius: 200.0,
                        lineWidth: 15.0,
                        percent: 0.4,
                        center: new Text("40/100",  style:GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30
                              ,color: Colors.black87),

                        ),),
                        progressColor: Color(0xffFDCC17),
                      )
                      ,

                      Text("Complete achievements to increase level", style:  GoogleFonts.roboto(
                        textStyle: TextStyle(fontSize: 15
                            ,color: Colors.black87),

                      ),)
                    ],),
                ),

              ),
            ),
          ),


        );
  }
}
Card buildCard1() {
  return Card(
    margin: EdgeInsets.all(10),
    elevation: 10,
    color: Colors.white,

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Container(
          height: 350,
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[


//    Image.asset(img
//    ,width: 80,
//    height: 80,
//    ),
              SizedBox(height: 15,),
                Text("Level", style:  GoogleFonts.pacifico(
                  textStyle: TextStyle(fontSize: 30
                      ,color: Colors.black87),

                ),),
                SizedBox(height: 35,),

                Text("01", style:  GoogleFonts.roboto(
                  textStyle: TextStyle(fontSize: 100
                      ,color: Colors.blue),

                ),),

                SizedBox(height: 75,),
                Text("Complete achievements to increase level", style:  GoogleFonts.roboto(
                  textStyle: TextStyle(fontSize: 15
                      ,color: Colors.black87),

                ),)
              ],),
          ),

        ),
      ),
    ),


  );
}
Card buildCard2() {
  return Card(
    margin: EdgeInsets.all(10),
    elevation: 10,
    color: Colors.white,

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Container(
          height: 370,
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[


//    Image.asset(img
//    ,width: 80,
//    height: 80,
//    ),
                SizedBox(height: 15,),
                Text("Rewards", style:  GoogleFonts.pacifico(
                  textStyle: TextStyle(fontSize: 30
                      ,color: Colors.black87),

                ),),
                Center(child: Image.asset("assets/images/gift.png",height: 220,)),

                SizedBox(height: 10,),



                Text("Reach level 2 to unlock more Rewards", style:  GoogleFonts.roboto(
                  textStyle: TextStyle(fontSize: 15
                      ,color: Colors.black87),

                ),)
              ],),
          ),

        ),
      ),
    ),


  );
}



