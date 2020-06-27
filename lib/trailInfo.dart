import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'intro1.dart';
import 'intro2.dart';
import 'intro3.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
class trailInfo extends StatefulWidget {
  @override
  _trailInfoState createState() => _trailInfoState();
}

class _trailInfoState extends State<trailInfo> {

  PageController _controller = PageController(

    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SlidingUpPanel(
        renderPanelSheet: false,
        panel: _floatingCollapsed(),

        collapsed: _floatingCollapsed(),
minHeight: 40,
        body: SafeArea(
          child: Stack(
            children: <Widget>[

               PageView(
                  physics: BouncingScrollPhysics(),
                  controller: _controller,

                  onPageChanged: (int x){


                  },
                  children: [
                    intro1(),
                    intro2(),
                    intro3(),
                  ],

              ),




            ],

          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget _floatingCollapsed(){
  return Container(
    decoration: BoxDecoration(
      color: Colors.black87,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0), topRight: Radius.circular(30.0)),
    ),
    margin: const EdgeInsets.fromLTRB(16.0, 5.0, 10.0, 0.0),
    child: Stack(children: <Widget>[


          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(

              children: <Widget>[

                Text("Trail 3 Information",style:GoogleFonts.pacifico(
                  textStyle: TextStyle(fontSize: 30
                      ,color: Colors.white),

                ),),
SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Text("Distance",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    Text("Elevation",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    Text("Difficulty",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

                  ],),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FaIcon(FontAwesomeIcons.peopleArrows,color: Colors.yellow,),
                      FaIcon(FontAwesomeIcons.blind,color: Colors.yellow,),
                      FaIcon(FontAwesomeIcons.mountain,color: Colors.yellow,)

                    ],),
                ),

                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Text("7.9 km",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                    Text("407 m",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                    Text("Moderate",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),

                  ],),
                ),
                SizedBox(height: 40,),
Text("Ratings",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
SizedBox(height: 10,),
SmoothStarRating(

    allowHalfRating: false,

    onRated: (v) {

    },

    starCount: 5,

    rating: 4.3,

    size: 18.0,

    isReadOnly:true,



    color: Colors.red,

    borderColor: Colors.redAccent,

    spacing:0.0

),

SizedBox(height: 5,),

Text("4.5",style: TextStyle(color: Colors.red),),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: <Widget>[
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Overview",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
SizedBox(height: 10,),
                      Text("Trail 3 is one of the awesome, lively and challenging "+"\n"+
                          "trail of Margalla hills in Islamabad. its very good "+"\n"+
                          "Its a good place to kick start hiking along with kids."+"\n"+
                          " The trail 3 keep you active throughout the journey,"+"\n"+
                              " while kids can take short breaks at various scenic"+"\n"+
                                  " spots on wooden benches. ",


 textAlign: TextAlign.left,

                        style:
                        GoogleFonts.ubuntu(
                          textStyle: TextStyle(fontSize: 15
                              ,color: Colors.white.withOpacity(0.8)),

                        ),),

                    ],
                  ),

                ],),
              )

              ],



            ),
          ),


    ],)
//SizedBox(height: 50,),
//        Padding(
//          padding: const EdgeInsets.symmetric(horizontal: 30),
//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//            Text("Distance",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//            Text("Elevation",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//            Text("Difficulty",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//
//          ],),
//        )

  );
}