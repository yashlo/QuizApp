import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app1/utils/colors.dart';
import 'package:quiz_app1/utils/variables.dart';
class AndroidHome extends StatefulWidget {
  const AndroidHome({Key key}) : super(key: key);

  @override
  _AndroidHomeState createState() => _AndroidHomeState();
}
class _AndroidHomeState extends State<AndroidHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: topcolor,
        title:  Text(selectTopic,style: TextStyle(color: splashtextco,fontSize: 24,fontWeight: FontWeight.w800,fontStyle: FontStyle.italic),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
                child: Container(
                  child: Icon(Icons.logout),
                ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(alignment: Alignment.topLeft,child: Text("What is Android")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("History of Android & Vrsion")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Android Architecture")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Core building block")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Arcitecture of Android File")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("DVM")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Mainfest.xml file")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Android Widgets")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Android Button")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Android Toast")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Toggle Button")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("CheckBox")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Radio Button")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Alert Dialog")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Spinner")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Auto Complete TextField")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("List View")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Rating Bar")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("WebView")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Seek Bar")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Date Picker")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Time Picker")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Progress bar")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Image Switcher")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Image Slider")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("View Stub")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Tab Layout")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Tab Layout with FrameLayout")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Search view")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Search view in tool bar")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("EditText with TextWatcher")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Activity Lifecycle")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Implicit Intent")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Explicit Intent")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Start Activity Result")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Share app data")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Android Fragement")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Option Menu")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("contaxt menu")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Popup menu")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Service")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Android preference")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Internet Storage")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("External Storage")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("SQL Lite")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Media player")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Video view")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Recording ")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Texttospeachtuotorial")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("telephony manager")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("bluethooth")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("List Paried Device")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Sensor")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Android Graphics")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Android Animation Example")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Google Map")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Notification")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Notification")),
              Divider(color: splashback,thickness: 2,),
            ],
          ),
        )
      ),
    );
  }
}
