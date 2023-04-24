import 'package:flutter/material.dart';
import '../Cons/names.dart';
import '../Cons/themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  PickedFile? _imageFile;
  ImagePicker picker = ImagePicker();
  DecorationImage? setImage;
  TextEditingController _eController = TextEditingController();
  TextEditingController _pController = TextEditingController();
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _uController = TextEditingController();

  Widget bottomPopUp(){
    return Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
            children: [
              Text(
                "Choose your profile picture",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(onPressed: (){
                    takePhoto(ImageSource.camera);
                  },
                      icon: Icon(Icons.camera_alt), label: Text("Camera", style: TextStyle(color: Colors.black))),
                  TextButton.icon(onPressed: (){
                    takePhoto(ImageSource.gallery);
                  },
                      icon: Icon(Icons.photo), label: Text("Gallery", style: TextStyle(color: Colors.black)))
                ],
              )

            ]
        )
    );
  }


  Future <void>  takePhoto(ImageSource source) async {
    final picked = await picker.getImage(source: source, imageQuality: 100);

    setState(() {
      _imageFile = picked;
    });
  }
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);},),
        backgroundColor: theme().primaryColor,
        elevation: 0,
        toolbarHeight: 100,
        title: Text("Edit Profile", style: TextStyle(fontSize: 25)),
        centerTitle: true,
      ),
      backgroundColor: theme().primaryColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(width: 4, color: theme().primaryColor),
                    shape: BoxShape.circle,
                    image: _imageFile == null
                        ? defaultImage
                        : DecorationImage(
                      image: FileImage(File(_imageFile!.path)),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 2,
                  right: 10,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        width: 0,
                        color: Colors.white,

                      ),

                    ),
                    child: InkWell(
                      onTap: (){
                        showModalBottomSheet(
                            context: context,
                            builder: ((builder) => bottomPopUp())

                        );
                      },
                      child: Icon(
                          Icons.edit,
                          color: theme().primaryColorDark
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 20, bottom: 10),
          //   child: CircleAvatar(radius: 90, backgroundColor: Colors.white, ),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 5, right: 20),
            child: Container(
              padding: const EdgeInsets.only(left:5, bottom: 10),
              color: theme().primaryColor,
              width: 100,
              child: const Text("Personal Information", style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:25, top:10),
            child: Text("First Name", style: TextStyle(fontSize: 15, color: Colors.white),),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 30,
                child: TextFormField(
                  controller: TextEditingController(text: registeredfName,),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 80, 78, 78))),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 80, 78, 78), )),
                      fillColor: theme().primaryColor,
                      filled: true,
                      contentPadding: EdgeInsets.only(bottom: 5, left: 2)
                  ),
                  style: TextStyle(color:Colors.grey.shade300, fontSize: 13),
                ),

              )),
          Padding(
            padding: const EdgeInsets.only(left:25, top:20),
            child: Text("Last Name", style: TextStyle(fontSize: 15, color: Colors.white),),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 30,
                child: TextFormField(
                  controller: TextEditingController(text: registeredlName,),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 80, 78, 78))),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 80, 78, 78))),
                      fillColor: theme().primaryColor,
                      filled: true,
                      contentPadding: EdgeInsets.only(bottom: 5, left: 2)
                  ),
                  style: TextStyle(color:Colors.grey.shade300, fontSize: 13),
                ),

              )),
          Padding(
            padding: const EdgeInsets.only(left:25, top:20,),
            child: Text("Major", style: TextStyle(fontSize: 15, color: Colors.white),),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 30,
                child: TextFormField(
                  controller: TextEditingController(text: registeredfName,),
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 80, 78, 78))),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 80, 78, 78))),
                      fillColor: theme().primaryColor,
                      filled: true,
                      contentPadding: EdgeInsets.only(bottom: 5, left: 2)

                  ),
                  style: TextStyle(color:Colors.grey.shade300, fontSize: 13),
                ),

              )),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30, bottom: 5, right: 20),
            child: Container(
              padding: const EdgeInsets.only(left: 5, bottom: 10),
              color: theme().primaryColor,
              width: 100,
              child: Text("Account Information", style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:25, top:10),
            child: Text("Email Address", style: TextStyle(fontSize: 15, color: Colors.white),),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 30,
                child: TextFormField(
                  controller: TextEditingController(text: registeredEmail,),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 80, 78, 78))),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 80, 78, 78))),
                      fillColor: theme().primaryColor,
                      filled: true,
                      contentPadding: EdgeInsets.only(bottom: 5, left: 2)

                  ),
                  style: TextStyle(color:Colors.grey.shade300, fontSize: 13),
                ),

              )),
          Padding(
            padding: const EdgeInsets.only(left:25, top:20),
            child: Text("Username", style: TextStyle(fontSize: 15, color: Colors.white),),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 30,
                child: TextFormField(

                  controller: TextEditingController(text: registeredUsername,),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,

                  decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 80, 78, 78))),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 80, 78, 78))),
                      fillColor: theme().primaryColor,
                      filled: true,
                      contentPadding: EdgeInsets.only(bottom: 5, left: 2)
                  ),
                  style: TextStyle(color:Colors.grey.shade300, fontSize: 13),
                ),

              )),


          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 50, top:40),
            child: GestureDetector(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme().primaryColorDark,
                    minimumSize: const Size.fromHeight(45),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  ),

                  onPressed: ()
                  {
                    setState(() {
                      finalPass = _pController.text;
                    });
                    Navigator.pop(context);
                  },
                  child: const Text("Confirm Changes", style: TextStyle(color: Colors.white),)
              ),
            ),
          ),
        ],
      ),
    );

  }}