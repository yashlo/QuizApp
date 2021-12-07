import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app1/Screens/Data%20Structure/Structure/2D-Array/dscommonmain.dart';
import 'package:quiz_app1/Screens/Data%20Structure/Structure/Array/dscommonmain.dart';
import 'package:quiz_app1/Screens/Data%20Structure/Structure/CircularSinglyLinkList/dscommonmain.dart';
import 'package:quiz_app1/Screens/Data%20Structure/Structure/Data%20Structure/dscommonmain.dart';
import 'package:quiz_app1/Screens/Data%20Structure/Structure/DataStruct/dscommonmain.dart';
import 'package:quiz_app1/Screens/Data%20Structure/Structure/DoublyLinkList/dscommonmain.dart';
import 'package:quiz_app1/Screens/Data%20Structure/Structure/LinkListTypes/dscommonmain.dart';
import 'package:quiz_app1/Screens/Data%20Structure/Structure/LinkedList/dscommonmain.dart';
import 'package:quiz_app1/Screens/Data%20Structure/Structure/Pointer/dscommonmain.dart';
import 'package:quiz_app1/Screens/Data%20Structure/Structure/Queue/dscommonmain.dart';
import 'package:quiz_app1/Screens/Data%20Structure/Structure/QueueTypes/dscommonmain.dart';
import 'package:quiz_app1/Screens/Data%20Structure/Structure/SinglyLinkList/dscommonmain.dart';
import 'package:quiz_app1/utils/colors.dart';
import 'package:quiz_app1/utils/variables.dart';
class DataStructureHome extends StatefulWidget {
  const DataStructureHome({Key key}) : super(key: key);

  @override
  _DataStructureHomeState createState() => _DataStructureHomeState();
}

class _DataStructureHomeState extends State<DataStructureHome> {
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
                child: Container(child: Icon(Icons.logout),
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
              GestureDetector(
                onTap: (){
              dslabevel>=1?    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => dscommon())):
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.white,
                      title: Text('Levels are not match',style: TextStyle(color: Colors.black),),
                      content:Text("Plese Update your levels before starting this topic. You required level 0 but current level of your is "+dslabevel.toString(),style: TextStyle(color: Colors.black),),
                      actions: <Widget>[
                        // usually buttons at the bottom of the dialog
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FlatButton(
                              child: new Text("Try Again",style: TextStyle(color: Colors.black),),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            FlatButton(
                              child: new Text("Close",style: TextStyle(color: Colors.black),),
                              onPressed: () {
                                Navigator.of(context)
                                    .pop(); //  SystemNavigator.pop();
                              }
                            ),
                          ],
                        ),
                      ],
                    );
                  });
                },
                  child: Container
                    (
                      child: Align(alignment: Alignment.topLeft,child: Text("Data Structure")))),
              Divider(color: splashback,thickness: 2,),
              GestureDetector(
                onTap: (){
                  dslabevel>=2?    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => pointer())):
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text('Levels are not match',style: TextStyle(color: Colors.black),),
                          content:Text("Plese Update your levels before starting this topic. You required level 0 but current level of your is "+dslabevel.toString(),style: TextStyle(color: Colors.black),),
                          actions: <Widget>[
                            // usually buttons at the bottom of the dialog
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FlatButton(
                                  child: new Text("Try Again",style: TextStyle(color: Colors.black),),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                FlatButton(
                                    child: new Text("Close",style: TextStyle(color: Colors.black),),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); //  SystemNavigator.pop();
                                    }
                                ),
                              ],
                            ),
                          ],
                        );
                      });
                },
                  child: Container(child: Align(alignment: Alignment.topLeft,child: Text("Data Structure Pointer")))),
              Divider(color: splashback,thickness: 2,),
              GestureDetector(
                onTap: (){
                  dslabevel>=3?    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => dsstruct())):
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text('Levels are not match',style: TextStyle(color: Colors.black),),
                          content:Text("Plese Update your levels before starting this topic. You required level 3 but current level of your is "+dslabevel.toString(),style: TextStyle(color: Colors.black),),
                          actions: <Widget>[
                            // usually buttons at the bottom of the dialog
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FlatButton(
                                  child: new Text("Try Again",style: TextStyle(color: Colors.black),),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                FlatButton(
                                    child: new Text("Close",style: TextStyle(color: Colors.black),),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); //  SystemNavigator.pop();
                                    }
                                ),
                              ],
                            ),
                          ],
                        );
                      });
                },
                  child:  Container(
                      child: Align(alignment: Alignment.topLeft,
                          child: Text("Data Structure Structure"),
                      ),
                  ),
              ),
              Divider(color: splashback,thickness: 2,),
              GestureDetector(
                onTap: (){
                  dslabevel>=4?    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Array())):
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text('Levels are not match',style: TextStyle(color: Colors.black),),
                          content:Text("Plese Update your levels before starting this topic. You required level 4 but current level of your is "+dslabevel.toString(),style: TextStyle(color: Colors.black),),
                          actions: <Widget>[
                            // usually buttons at the bottom of the dialog
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FlatButton(
                                  child: new Text("Try Again",style: TextStyle(color: Colors.black),),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                FlatButton(
                                    child: new Text("Close",style: TextStyle(color: Colors.black),),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); //  SystemNavigator.pop();
                                    }
                                ),
                              ],
                            ),
                          ],
                        );
                      });
                },
                  child: Container(child: Align(alignment: Alignment.topLeft,child: Text("Data Structure Array")))),
              Divider(color: splashback,thickness: 2,),
              GestureDetector(
                onTap: (){
                  dslabevel>=5?    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Array2d())):
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text('Levels are not match',style: TextStyle(color: Colors.black),),
                          content:Text("Plese Update your levels before starting this topic. You required level 5 but current level of your is "+dslabevel.toString(),style: TextStyle(color: Colors.black),),
                          actions: <Widget>[
                            // usually buttons at the bottom of the dialog
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FlatButton(
                                  child: new Text("Try Again",style: TextStyle(color: Colors.black),),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                FlatButton(
                                    child: new Text("Close",style: TextStyle(color: Colors.black),),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); //  SystemNavigator.pop();
                                    }
                                ),
                              ],
                            ),
                          ],
                        );
                      });

                },
                  child: Container(child: Align(alignment: Alignment.topLeft,child: Text("Data Structure 2D Array")))),
              Divider(color: splashback,thickness: 2,),
              GestureDetector(
                onTap: (){
                  dslabevel>=6?    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LinkedList())):
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text('Levels are not match',style: TextStyle(color: Colors.black),),
                          content:Text("Plese Update your levels before starting this topic. You required level 6 but current level of your is "+dslabevel.toString(),style: TextStyle(color: Colors.black),),
                          actions: <Widget>[
                            // usually buttons at the bottom of the dialog
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FlatButton(
                                  child: new Text("Try Again",style: TextStyle(color: Colors.black),),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                FlatButton(
                                    child: new Text("Close",style: TextStyle(color: Colors.black),),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); //  SystemNavigator.pop();
                                    }
                                ),
                              ],
                            ),
                          ],
                        );
                      });

                },
                  child: Container(child:
              Align(alignment: Alignment.topLeft,
                  child: Text("Data Structure Linked List")))),
              Divider(color: splashback,thickness: 2,),
              GestureDetector(
                onTap: (){
                    dslabevel>=7?    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LinkedListTypes())):
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            title: Text('Levels are not match',style: TextStyle(color: Colors.black),),
                            content:Text("Plese Update your levels before starting this topic. You required level 7 but current level of your is "+dslabevel.toString(),style: TextStyle(color: Colors.black),),
                            actions: <Widget>[
                              // usually buttons at the bottom of the dialog
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FlatButton(
                                    child: new Text("Try Again",style: TextStyle(color: Colors.black),),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  FlatButton(
                                      child: new Text("Close",style: TextStyle(color: Colors.black),),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop(); //  SystemNavigator.pop();
                                      }
                                  ),
                                ],
                              ),
                            ],
                          );
                        });


                },
                child: Container(
                    child: Align(alignment: Alignment.topLeft,child: Text("Data Structure types of Linked List"))),
              ),
              Divider(color: splashback,thickness: 2,),
              GestureDetector(
                onTap: (){
                  dslabevel>=8?    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SinglyLinkedList())):
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text('Levels are not match',style: TextStyle(color: Colors.black),),
                          content:Text("Plese Update your levels before starting this topic. You required level 7 but current level of your is "+dslabevel.toString(),style: TextStyle(color: Colors.black),),
                          actions: <Widget>[
                            // usually buttons at the bottom of the dialog
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FlatButton(
                                  child: new Text("Try Again",style: TextStyle(color: Colors.black),),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                FlatButton(
                                    child: new Text("Close",style: TextStyle(color: Colors.black),),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); //  SystemNavigator.pop();
                                    }
                                ),
                              ],
                            ),
                          ],
                        );
                      });

                },
                  child: Container(child: Align(alignment: Alignment.topLeft,child: Text("Data Structure Simply Linked List")))),
              Divider(color: splashback,thickness: 2,),
              GestureDetector(
                onTap: (){
                  dslabevel>=9?    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DoublyLinkedList())):
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text('Levels are not match',style: TextStyle(color: Colors.black),),
                          content:Text("Plese Update your levels before starting this topic. You required level 7 but current level of your is "+dslabevel.toString(),style: TextStyle(color: Colors.black),),
                          actions: <Widget>[
                            // usually buttons at the bottom of the dialog
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FlatButton(
                                  child: new Text("Try Again",style: TextStyle(color: Colors.black),),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                FlatButton(
                                    child: new Text("Close",style: TextStyle(color: Colors.black),),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); //  SystemNavigator.pop();
                                    }
                                ),
                              ],
                            ),
                          ],
                        );
                      });

                },
                  child: Container(
                      child: Align(alignment: Alignment.topLeft,child: Text("Data Structure Doubly Linked List")))),
              Divider(color: splashback,thickness: 2,),
              GestureDetector(
                onTap: (){
                  dslabevel>=10?    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CircularDoublyLinkList())):
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text('Levels are not match',style: TextStyle(color: Colors.black),),
                          content:Text("Plese Update your levels before starting this topic. You required level 10 but current level of your is "+dslabevel.toString(),style: TextStyle(color: Colors.black),),
                          actions: <Widget>[
                            // usually buttons at the bottom of the dialog
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FlatButton(
                                  child: new Text("Try Again",style: TextStyle(color: Colors.black),),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                FlatButton(
                                    child: new Text("Close",style: TextStyle(color: Colors.black),),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); //  SystemNavigator.pop();
                                    }
                                ),
                              ],
                            ),
                          ],
                        );
                      });
                },
                  child: Container(
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("Data Structure Circular Link List"),
                      ),
                  ),
              ),

              Divider(color: splashback,thickness: 2,),
              GestureDetector(
                onTap: (){
                  dslabevel>=11?    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CircularDoublyLinkList())):
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text('Levels are not match',style: TextStyle(color: Colors.black),),
                          content:Text("Plese Update your levels before starting this topic. You required level 11 but current level of your is "+dslabevel.toString(),style: TextStyle(color: Colors.black),),
                          actions: <Widget>[
                            // usually buttons at the bottom of the dialog
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FlatButton(
                                  child: new Text("Try Again",style: TextStyle(color: Colors.black),),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                FlatButton(
                                    child: new Text("Close",style: TextStyle(color: Colors.black),),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); //  SystemNavigator.pop();
                                    }
                                ),
                              ],
                            ),
                          ],
                        );
                      });
                },
                child: Container(
                    child:
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("Data Structure Circular doubly Link List"),
                    ),
                ),
              ),

              Divider(color: splashback,thickness: 2,),
              GestureDetector(
                onTap: (){
                  dslabevel>=12?    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CircularDoublyLinkList())):
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text('Levels are not match',style: TextStyle(color: Colors.black),),
                          content:Text("Plese Update your levels before starting this topic. You required level 11 but current level of your is "+dslabevel.toString(),style: TextStyle(color: Colors.black),),
                          actions: <Widget>[
                            // usually buttons at the bottom of the dialog
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FlatButton(
                                  child: new Text("Try Again",style: TextStyle(color: Colors.black),),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                FlatButton(
                                    child: new Text("Close",style: TextStyle(color: Colors.black),),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); //  SystemNavigator.pop();
                                    }
                                ),
                              ],
                            ),
                          ],
                        );
                      });

                },
                child: Container(
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Data Structure Stack"),
                    ),
                ),
              ),

              Divider(color: splashback,thickness: 2,),
              GestureDetector(
                onTap: (){
                  dslabevel>=13?    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Queue())):
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text('Levels are not match',style: TextStyle(color: Colors.black),),
                          content:Text("Plese Update your levels before starting this topic. You required level 11 but current level of your is "+dslabevel.toString(),style: TextStyle(color: Colors.black),),
                          actions: <Widget>[
                            // usually buttons at the bottom of the dialog
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FlatButton(
                                  child: new Text("Try Again",style: TextStyle(color: Colors.black),),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                FlatButton(
                                    child: new Text("Close",style: TextStyle(color: Colors.black),),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); //  SystemNavigator.pop();
                                    }
                                ),
                              ],
                            ),
                          ],
                        );
                      });
                },
                  child: GestureDetector(
                    onTap: (){
                      dslabevel>=14?    Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => QueueTypes())):
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: Colors.white,
                              title: Text('Levels are not match',style: TextStyle(color: Colors.black),),
                              content:Text("Plese Update your levels before starting this topic. You required level 11 but current level of your is "+dslabevel.toString(),style: TextStyle(color: Colors.black),),
                              actions: <Widget>[
                                // usually buttons at the bottom of the dialog
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FlatButton(
                                      child: new Text("Try Again",style: TextStyle(color: Colors.black),),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    FlatButton(
                                        child: new Text("Close",style: TextStyle(color: Colors.black),),
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pop(); //  SystemNavigator.pop();
                                        }
                                    ),
                                  ],
                                ),
                              ],
                            );
                          });

                    },
                    child: Container(
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Data Structure DS Queue"),
                        ),
                    ),
                  ),
              ),
              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Array Representation of Queue")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Linked List Representation Queue")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Circular Queue")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Dequeue")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Priority Queue")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Tree")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Binarry Tree")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Binarry Search Tree")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure AVL Tree")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure B Tree")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure B+ Tree")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Graph")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Graph Implementation")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure BFS Algorithem")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure DFS Algorithem")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Spanning Tree")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Linear Search")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Binary Search")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Bubble Sort")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Bucket Sort")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Comb Sort")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Counting Sort")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Heap Sort")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Insertion Sort")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Merge Sort")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Quick Sort")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Radix Sort")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Selection Sort")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Shell Sort")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Bitonic Sort")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Coktail Sort")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Cycle Sort")),

              Divider(color: splashback,thickness: 2,),
              Align(alignment: Alignment.topLeft,child: Text("Data Structure Tim Sort")),

              Divider(color: splashback,thickness: 2,),


            ],
          ),
        ),
      ),

    );
  }
}
