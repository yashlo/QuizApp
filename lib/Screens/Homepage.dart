import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app1/Screens/C++/CpphomePage.dart';
import 'package:quiz_app1/Screens/C/CHomePage.dart';
import 'package:quiz_app1/Screens/Python/PythonHomePage.dart';
import 'package:quiz_app1/my_shared_preferences.dart';
import 'package:quiz_app1/utils/colors.dart';
import 'package:quiz_app1/utils/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Android/AndroidHome.dart';
import 'Data Structure/DataStructureHomePage.dart';
import 'Flutter/FlutterHomePage.dart';
import 'Java/JavaHomePage.dart';
class MyHomePage extends StatefulWidget {
   MyHomePage({Key key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int cselect = 0;
  int cppselect = 0;
  int javaselect = 0;
  int androidselect = 0;
  int pythonselect = 0;
  int flutterselect  = 0;
  int datastructureselect = 0;
   SharedPreferences logindata;
    setdata() async{
     logindata = await SharedPreferences.getInstance();
     dslabevel =  logindata.getInt('counter') ?? 1;
     clabevel= logindata.getInt('ccount') ??1;
     cpplabevel= logindata.getInt('cppcount') ??1;
     javalabevel= logindata.getInt('javacount') ??1;
     androlabevel= logindata.getInt('androidcount') ??1;
     pythlabevel=logindata.getInt('pycount') ??1;
     fluttlabevel=logindata.getInt('flucount') ??1;

     print(dslabevel);
     return null;
   }
  @override
  void initState() {
     setdata();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashco,
      //Home Page Scaffold
      appBar: AppBar(
        backgroundColor: topcolor,
        title:  Text(selectlanguage,style: TextStyle(color: splashtextco,fontSize: 24,fontWeight: FontWeight.w800,fontStyle: FontStyle.italic),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Divider(color: splashback,thickness: 2,),
            GestureDetector(
              onTap: (){
                cselect =  cselect== 0 ? cselect=1:cselect=0;
                cppselect = 0;
                javaselect = 0;
                androidselect  = 0;
                pythonselect = 0;
                flutterselect = 0;
                datastructureselect = 0;
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChomePage()));
                setState(() {
                });
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     cselect == 1? Text(ctypelabel,style: TextStyle(color: selectedco,fontSize: 16),):
                     Text(ctypelabel,style: TextStyle(color: unselectcolor),) ,
                      Image.asset("assets/Stroke1.png",color: cselect == 1?selectedco:unselectcolor,),
                    ],
                  ),
                ),
              ),
            ),
            Divider(color: splashback,thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  cselect =  0;
                  cppselect = 1;
                  javaselect = 0;
                  androidselect  = 0;
                  pythonselect = 0;
                  flutterselect = 0;
                  datastructureselect = 0;
                  setState(() {
                    cselect =  0;
                    cppselect = 1;
                    javaselect = 0;
                    androidselect  = 0;
                    pythonselect = 0;
                    flutterselect = 0;
                    datastructureselect = 0;

                  });
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CppHomePage()));

                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cppselect == 1? Text(cpptypelabel,style: TextStyle(color: selectedco,fontSize: 16),):
                      Text(cpptypelabel,style: TextStyle(color: unselectcolor),) ,
                      Image.asset("assets/Stroke1.png",color: cppselect == 1?selectedco:unselectcolor,),
                    ],
                  ),
                ),
              ),
            ),
            Divider(color: splashback,thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  cselect =  0;
                  cppselect = 0;
                  javaselect = 1;
                  androidselect  = 0;
                  pythonselect = 0;
                  flutterselect = 0;
                  datastructureselect = 0;
                  setState(() {
                    cselect =  0;
                    cppselect = 0;
                    javaselect = 1;
                    androidselect  = 0;
                    pythonselect = 0;
                    flutterselect = 0;
                    datastructureselect = 0;
                  });
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => JavaHomePage()));
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      javaselect == 1? Text(javatypelabel,style: TextStyle(color: selectedco,fontSize: 16),):
                      Text(javatypelabel,style: TextStyle(color: unselectcolor),) ,
                      Image.asset("assets/Stroke1.png",color: javaselect == 1?selectedco:unselectcolor,),
                    ],
                  ),
                ),
              ),
            ),
            Divider(color: splashback,thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  cselect =  0;
                  cppselect = 0;
                  javaselect = 0;
                  androidselect  = 1;
                  pythonselect = 0;
                  flutterselect = 0;
                  datastructureselect = 0;
                  setState(() {
                    cselect =  0;
                    cppselect = 0;
                    javaselect = 0;
                    androidselect  = 1;
                    pythonselect = 0;
                    flutterselect = 0;
                    datastructureselect = 0;
                  });
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AndroidHome()));
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      androidselect == 1? Text(androidtypelabel,style: TextStyle(color: selectedco,fontSize: 16),):
                      Text(androidtypelabel,style: TextStyle(color: unselectcolor),) ,
                      Image.asset("assets/Stroke1.png",color: androidselect == 1?selectedco:unselectcolor,),
                    ],
                  ),
                ),
              ),
            ),
            Divider(color: splashback,thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  cselect =  0;
                  cppselect = 0;
                  javaselect = 0;
                  androidselect  = 0;
                  pythonselect = 1;
                  flutterselect = 0;
                  datastructureselect = 0;
                  setState(() {
                    cselect =  0;
                    cppselect = 0;
                    javaselect = 0;
                    androidselect  = 0;
                    pythonselect = 1;
                    flutterselect = 0;
                    datastructureselect = 0;
                  });
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PaythonHomePage()));
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      pythonselect == 1? Text(pythonlabel,style: TextStyle(color: selectedco,fontSize: 16),):
                      Text(pythonlabel,style: TextStyle(color: unselectcolor),) ,
                      Image.asset("assets/Stroke1.png",color: pythonselect == 1?selectedco:unselectcolor,),

                    ],
                  ),
                ),
              ),
            ),
            Divider(color: splashback,thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  cselect =  0;
                  cppselect = 0;
                  javaselect = 0;
                  androidselect  = 0;
                  pythonselect = 0;
                  flutterselect = 1;
                  datastructureselect = 0;
                  setState(() {
                    cselect =  0;
                    cppselect = 0;
                    javaselect = 0;
                    androidselect  = 0;
                    pythonselect = 0;
                    flutterselect = 1;
                    datastructureselect = 0;
                  });
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FlutterHomePage()));

                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      flutterselect == 1? Text(flutterlabel,style: TextStyle(color: selectedco,fontSize: 16),):
                      Text(flutterlabel,style: TextStyle(color: unselectcolor),) ,
                      Image.asset("assets/Stroke1.png",color: pythonselect == 1?selectedco:unselectcolor,),

                    ],
                  ),
                ),
              ),
            ),
            Divider(color: splashback,thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  cselect =  0;
                  cppselect = 0;
                  javaselect = 0;
                  androidselect  = 0;
                  pythonselect = 0;
                  flutterselect = 0;
                  datastructureselect = 1;
                    print(dslabevel);
                  setState((){
                    cselect =  0;
                    cppselect = 0;
                    javaselect = 0;
                    androidselect  = 0;
                    pythonselect = 0;
                    flutterselect = 0;
                    datastructureselect = 1;
                  });
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>DataStructureHome()));
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      datastructureselect == 1? Text(datastruct,style: TextStyle(color: selectedco,fontSize: 16),):
                      Text(datastruct,style: TextStyle(color: unselectcolor),) ,
                      Image.asset("assets/Stroke1.png",color: datastructureselect == 1?selectedco:unselectcolor,),
                    ],
                  ),
                ),
              ),
            ),
            Divider(color: splashback,thickness: 2,),
            SizedBox(height: 50,),
          ]
        ),
      )
    );
  }
}