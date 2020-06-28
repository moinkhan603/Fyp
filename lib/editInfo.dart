import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import 'CRUD.dart';
class editInfo extends StatefulWidget {
  @override
  _editInfoState createState() => _editInfoState();
}

class _editInfoState extends State<editInfo> {
  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {



    return Material(
      color: Colors.white,
      child: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.black87,
          title: Text('Follow Me',),centerTitle: true,
          automaticallyImplyLeading: false,

        ),
        body: Container(
          child: ModalProgressHUD(
            inAsyncCall: showSpinner,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20),


                  //=================
                  //   Text Field
                  //=================



                  //====================
                  //  Name text field
                  //====================
                  Container(
                    margin: const EdgeInsets.all( 8.0),
                    child: TextField(
                      onChanged: (String value){
CRUD.name=value;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Name",
                        labelText: "Name",
                        alignLabelWithHint: false,
                        icon: Icon(Icons.person_outline),
                        filled: true,
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                    ),
                  ),


                  //====================
                  //  E-Mail field
                  //====================
                  Container(
                    margin: const EdgeInsets.all( 8.0),
                    child: TextField(
                      onChanged: (String value){
                        CRUD.email=value;
                      },
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: "E-Mail",
                        alignLabelWithHint: false,
                        prefixIcon: Icon(Icons.alternate_email),
                        filled: true,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                    ),
                  ),



                  //=======================
                  //  Password text field
                  //=======================



                  //===========================
                  //  Phone Number text field
                  //===========================
                  Container(
                    margin: const EdgeInsets.all( 8.0),
                    child: TextField(
                      onChanged: (String value){
                        CRUD.Number=value;
                      },
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: "Phone Number",
                        alignLabelWithHint: false,
                        prefixIcon: Icon(Icons.phone,color: Colors.blue),
                        filled: true,
                      ),
                      textInputAction: TextInputAction.done,
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all( 8.0),
                    child: TextField(
                      onChanged: (String value){
                        CRUD.Country=value;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Country",
                        labelText: "your Country",
                        alignLabelWithHint: false,
                        filled: true,
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.all( 8.0),
                    child: TextField(
        onChanged: (String value){
            CRUD.City=value;
        },
                      decoration: InputDecoration(
                        hintText: "Enter City",
                        labelText: "your City",
                        alignLabelWithHint: false,
                        filled: true,
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                    ),
                  ),

                  RaisedButton(
                    onPressed:(){


                      setState(() {
                        showSpinner=true;
                      });
                      CRUD.updateTaps();

                      setState(() {
                        showSpinner=false;
                      });
Navigator.pop(context);
                    },
                    textColor: Colors.white,
                    color: Colors.blue,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Save",
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
