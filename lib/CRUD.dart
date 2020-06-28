import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class CRUD{


  static String name="your name";
  static String email="example@yahoo.com";
  static String password="";
  static String Number="xx-xxxxxxxx";
  static String Country="your Country";
  static String City="your City";
  static String imgurl="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png";

  static  final  _auth = FirebaseAuth.instance;
  static final databaseReference = FirebaseDatabase.instance.reference();




  static getData()async{

    final databaseReference = FirebaseDatabase.instance.reference().child("users");

    final _auth=FirebaseAuth.instance;
    FirebaseUser loggedinUser;
    String myuserid;
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedinUser = user;
        print(loggedinUser.uid);
        myuserid=loggedinUser.uid;
      }
    }
    catch(e)
    {
      print(e);
    }


    databaseReference.orderByKey().equalTo(myuserid).once().
    then((DataSnapshot dataSnapshot){
      Map<dynamic, dynamic> values = dataSnapshot.value;
      values.forEach((key,values) {



        name=values["Name"];
        Number=values["Number"];
        email=values["Email"];
        Country=values["Country"];
        City=values["City"];
        imgurl=values["img_url"];

      });

    });



  }


  static updateTaps()async{


    FirebaseUser loggedinUser;
    String myuserid;
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedinUser = user;
        print(loggedinUser.uid);
        myuserid = loggedinUser.uid;
      }
    }
    catch (e) {
      print(e);
    }





    await databaseReference.child("users").child(myuserid).update({
      'Name': CRUD.name,
      'Email':CRUD.email,
      'Number':CRUD.Number,
      'Country':CRUD.Country,
      'City':CRUD.City,
      'img_url':CRUD.imgurl

    });

  }








  static void addData() async {




    FirebaseUser loggedinUser;
    String myuserid;
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedinUser = user;
        print(loggedinUser.uid);
        myuserid = loggedinUser.uid;
      }
    }
    catch (e) {
      print(e);
    }





    await databaseReference.child("users").child(myuserid).set({
      'Name': CRUD.name,
      'Email':CRUD.email,
      'Number':CRUD.Number,
      'Country':CRUD.Country,
      'City':CRUD.City,
      'img_url': CRUD.imgurl,



    });


  }

}