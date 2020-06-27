import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';

class Maps extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {

  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(33.741955, 73.081806);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: <Widget>[
        Image.asset("assets/images/map.jpeg"),

        Positioned(
          top: 600,
          left: 330,
          child: FloatingActionButton.extended(onPressed:(){
            chooseFile2();

//                        Navigator.push(
//                          context,
//                          MaterialPageRoute(builder: (context) => CameraApp()),
//                        );


          },
backgroundColor: Colors.deepPurple,
              label: Text("AR")),
        )


      ],),


    );
  }


void chooseFile2()async {
 // _onWillPop();
  File selected = await ImagePicker.pickImage(source: ImageSource.camera);


//  new Future.delayed(
//
//      const Duration(seconds: 4),
//          () {
//
//print("chk");
//
//          }
//
//  );





  this.setState(() {
    var _image = selected;
    print(_image);
  });

}


  Future<bool> _onWillPop() {
    TextStyle mystyle = TextStyle(color: Colors.white);

    return showDialog(
      context: context,
      builder: (context) =>
      new AlertDialog(
        backgroundColor: Colors.black87,
        title: new Text('NOT SUPPORTED?', style: mystyle,),
        content: new Text('Do you want to exit an App', style: mystyle,),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No', style: mystyle,),
          ),
          new FlatButton(
           // onPressed: () => SystemNavigator.pop(),
            child: new Text('Yes', style: mystyle,),
          ),
        ],
      ),
    ) ?? false;
  }
}





