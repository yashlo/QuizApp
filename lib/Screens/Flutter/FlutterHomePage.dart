import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app1/utils/colors.dart';
import 'package:quiz_app1/utils/variables.dart';
class FlutterHomePage extends StatefulWidget {
  const FlutterHomePage({Key key}) : super(key: key);
  @override
  _FlutterHomePageState createState() => _FlutterHomePageState();
}

class _FlutterHomePageState extends State<FlutterHomePage> {
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
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(alignment: Alignment.topLeft,child: Text("Flutter")),
              Divider(color: splashback,thickness: 2,),

              Align(alignment: Alignment.topLeft,child: Text("Dart Programing")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Widgets")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Layout")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Gestures")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("State Management")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Scaffold")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Container")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Row & Column")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Text")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter TextField")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Buttons")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Stack")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Forms")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter AlertDialog")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Icons")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Images")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Card")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Tabbar")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Drawer")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter List")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter GridView")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Toast")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Checkbox")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Radio Button")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Progress Bar")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Snackbar")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Tooltip")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Slider")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Switch")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Charts")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Bottom Navigation Bar")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Slider")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Table")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Calennder")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Animation")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Google Map")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Rest Api")),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Flutter Database")),
              Divider(color: splashback,thickness: 2,),
            ],
          ),
        ),
      ),

    );
  }
}
