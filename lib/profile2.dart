import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fyp/editInfo.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:path/path.dart' as Path;
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'CRUD.dart';


class Profile2 extends StatefulWidget {
  static const routeName = '/Profile2';
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile2> {
  bool showSpinner = false;

  File _image;
  String _uploadedFileURL = "https://firebasestorage.googleapis.com/v0/b/nomitap-6dd55.appspot.com/o/Recent%2Fimg_inside.png?alt=media&token=5fae7f82-ce29-4915-b2d4-cef9aaa1e939";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Container(
          child: new ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  //=========================================
                  // Profile Image With Camera Icon & Name
                  //=========================================
                  GestureDetector(

                      onTap:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => editInfo()),
                        );
        },
                      child: Icon(Icons.edit,color: Colors.white,)),
                  Container(
                    height: 250.0,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Stack(
                              fit: StackFit.loose,
                              alignment: AlignmentDirectional.center,
                              children: <Widget>[
                                //================
                                //Profile Image
                                //================
                                _buildProfileImage(),

                                //=============
                                //Camera Icon
                                //=============
                                Padding(
                                    padding:
                                    EdgeInsets.only(top: 100.0, right: 90.0),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap:(){
                                            chooseFile();
                                            setState(() {
                                            showSpinner = false;
                                            });

                                },

                                          child: new CircleAvatar(

                                            backgroundColor: Colors.grey,
                                            radius: 20.0,
                                            child: new Icon(
                                              Icons.camera_alt,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        )
                                      ],
                                    )),
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Text(CRUD.name,style: TextStyle(fontSize: 20,color: Colors.white)),
                        ),
                      ],
                    ),
                  ),


                  Divider(height: 5,color: Colors.grey,),
                  //=============
                  //     Info
                  //=============
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 25.0),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: Text(
                                  'E-Mail',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,color: Colors.white)
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 6.0),
                              child:  Text(CRUD.email,  style: TextStyle(
                                  color: Colors.white))),

                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: Text(
                                  'Phone Number',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,color: Colors.white)
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 6.0),
                              child:  Text(CRUD.Number,  style: TextStyle(
                                  color: Colors.white))),

                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: new Text(
                                        'Country',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,color: Colors.white),
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: new Text(
                                        'City',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,color: Colors.white),
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 2.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: new Text(CRUD.Country,  style: TextStyle(
                              color: Colors.white),),
                                    ),
                                    flex: 2,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: new Text(CRUD.City,  style: TextStyle(
                                          color: Colors.white)),
                                    ),
                                    flex: 2,
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),


                  //===================
                  //Bottom Section
                  //===================



                ],
              ),
            ],
          ),
        ),
      ),
    );
  }




  _buildProfileImage() {
    return Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 4, color: Colors.grey),
          image: DecorationImage(
            image: NetworkImage(CRUD.imgurl),
            fit: BoxFit.cover,
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
  }
  void chooseFile() async {
    File selected = await ImagePicker.pickImage(source: ImageSource.gallery);

    this.setState(() {
      _image = selected;
      print(_image);
    });

    setState(() {
      showSpinner = true;
    });

    StorageReference storageReference = FirebaseStorage.instance
        .ref()
        .child('Recent/${Path.basename(_image.path)}}');
    StorageUploadTask uploadTask = storageReference.putFile(_image);
    await uploadTask.onComplete;
    print('File Uploaded');
    storageReference.getDownloadURL().then((fileURL) {
      setState(() {
        _uploadedFileURL = fileURL;
        print(fileURL);
        CRUD.imgurl = fileURL;
        showSpinner = false;
      });
    });
  }
}
//=======================
// Build bottom Profile
//=======================
