import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:fyp/CRUD.dart';
import 'profile2.dart';
import 'package:fyp/trailInfo.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'profile.dart';
import 'Navigation.dart';
class HomeScrren extends StatefulWidget {





  @override
  _HomeScrrenState createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  final Color primary = Colors.white;

  final Color active = Colors.grey.shade800;

  final Color divider = Colors.grey.shade600;

  int _currentIndex = 0;
  final List<Widget> _children = [

//    Recent(),
//    Trending(),
//    Random(),
//    Favouirites()

Profile(),
    Navigation(),
    trailInfo()

  ];

@override
  void initState() {
    // TODO: implement initState


  super.initState();
  CRUD.getData();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        key: _key,
      backgroundColor: Colors.white.withOpacity(0.95),
      bottomNavigationBar:FancyBottomNavigation(
        barBackgroundColor: Colors.black87,
        circleColor: Colors.orange,
        activeIconColor: Colors.black,
        textColor: Colors.white,
        inactiveIconColor: Colors.white,
        tabs: [
          TabData(iconData: Icons.home, title: "Home",),
          TabData(iconData: Icons.location_on, title: "Search"),
          TabData(iconData: Icons.wb_incandescent, title: "Trail Info")
        ],
        onTabChangedListener: (position) {
          setState(() {
            _currentIndex = position;
          });
        },
      ),

//      BottomNavigationBar(
//        backgroundColor: Colors.black87,
//        onTap: onTabTapped, // new
//        currentIndex: _currentIndex,
//        // this will be set when a new tab is tapped
//        items: [
//          BottomNavigationBarItem(
//            backgroundColor: Colors.white,
//            icon: new Icon(Icons.person,color: Colors.white),
//            title: new Text('Profile',style: TextStyle(color: Colors.white)),
//          ),
//          BottomNavigationBarItem(
//            backgroundColor: Colors.white,
//            icon: new Icon(Icons.location_on,color: Colors.white,),
//            title: new Text('Navigation',style: TextStyle(color: Colors.white),),
//          ),
//
//        ],
//      ),

     appBar:AppBar(
       backgroundColor: Colors.black87,
       title: Text('Follow Me',),centerTitle: true,
       automaticallyImplyLeading: false,
       leading: IconButton(
         icon: Icon(Icons.menu),
         onPressed: () {
           _key.currentState.openDrawer();
         },
       ),
     ),

        drawer: _buildDrawer(context),

    //AppBar(backgroundColor: Colors.black87,title:Text(
//
//        "Follow Me ",style: GoogleFonts.pacifico(
//        textStyle: TextStyle(fontSize: 30
//            ,color: Colors.white),
//
//      ),
//
//      ),
//      centerTitle: true,
//      actions: <Widget>[
//        Padding(
//          padding: const EdgeInsets.all(8.0),
//          child: Center(child: FaIcon(FontAwesomeIcons.powerOff,)),
//        ),
//
//      ],
//      ),

      body: _children[_currentIndex]




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
                        percent: 0,
                        center: new Text("0/100",  style:GoogleFonts.pacifico(
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

  void onTabTapped(int index) {

    if (index == 5) {
      // SystemNavigator.pop();
      //  _launchSupport();
    }
    else {
      setState(() {
        _currentIndex = index;
      });
    }
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

                Text("0", style:  GoogleFonts.roboto(
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



_buildDrawer(BuildContext context) {
  final String image ='assets/images/background1.jpg';
  return ClipPath(

    /// ---------------------------
    /// Building Shape for drawer .
    /// ---------------------------

    clipper: OvalRightBorderClipper(),

    /// ---------------------------
    /// Building drawer widget .
    /// ---------------------------

    child: Drawer(
      child: Container(
        padding: const EdgeInsets.only(left: 16.0, right: 40),
        decoration: BoxDecoration(
            color:  Colors.black87, boxShadow: [BoxShadow(color: Colors.white)]),
        width: 300,
        child: SafeArea(

          /// ---------------------------
          /// Building scrolling  content for drawer .
          /// ---------------------------

          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(
                      Icons.power_settings_new,
                      color: Colors.white,
                    ),
                    onPressed: () {

                      Navigator.pop(context);
                    },
                  ),
                ),


                /// ---------------------------
                /// Building header for drawer .
                /// ---------------------------

                Container(
                  height: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          colors: [Colors.orange, Colors.deepOrange])),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(CRUD.imgurl),
                  ),
                ),
                SizedBox(height: 5.0),

                /// ---------------------------
                /// Building header title for drawer .
                /// ---------------------------

                Text(
                  CRUD.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  CRUD.email,
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),

                /// ---------------------------
                /// Building items list  for drawer .
                /// ---------------------------

                SizedBox(height: 30.0),
                _buildRow(Icons.home, "Home"),
                _buildDivider(),

                _buildRow(Icons.card_giftcard, "Rewards", showBadge: true),
                _buildDivider(),
                _buildRow(Icons.gps_fixed, "Map Info",
                    ),
                _buildDivider(),
                GestureDetector(
                    onTap: (){

                      Navigator.push(context,

                        MaterialPageRoute(builder: (context) => Profile2()),
                      );
                    },

                    child: _buildRow(Icons.settings, "Settings")),

                _buildDivider(),
                _buildRow(Icons.info_outline, "Help"),
                _buildDivider(),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
/// ---------------------------
/// Building divider for drawer .
/// ---------------------------

Divider _buildDivider() {
  return Divider(
    color: Colors.grey.shade600,
  );
}

/// ---------------------------
/// Building item  for drawer .
/// ---------------------------

Widget _buildRow(IconData icon, String title, {bool showBadge = false}) {
  final TextStyle tStyle = TextStyle(color: Colors.white, fontSize: 16.0);
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: Row(children: [
      Icon(
        icon,
        color: Colors.white,
      ),
      SizedBox(width: 10.0),
      Text(
        title,
        style: tStyle,
      ),
      Spacer(),
      if(showBadge)
        Material(
          color: Colors.deepOrange,
          elevation: 5.0,
          shadowColor: Colors.red,
          borderRadius: BorderRadius.circular(5.0),
          child: Container(
            width: 25,
            height: 25,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Text(
              "0",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ) ,
    ],),
  );
}


/// ------------------
/// for shaping the drawer. You can customize it as your own
/// ------------------
class OvalRightBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width-40, 0);
    path.quadraticBezierTo(
        size.width, size.height / 4, size.width, size.height/2);
    path.quadraticBezierTo(
        size.width, size.height - (size.height / 4), size.width-40, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}