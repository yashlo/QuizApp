import 'package:flutter/material.dart';
import 'package:quiz_app1/utils/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Result extends StatelessWidget {
  SharedPreferences logindata;
  final int resultScore;
  final Function resetHandler;
  setdata(int i) async{
    logindata = await SharedPreferences.getInstance();
    logindata.setInt('counter',i);
    dslabevel =  logindata.getInt('counter') ?? 1;
    print(dslabevel);
    return null;
  }

  Result(this.resultScore, this.resetHandler);
//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 41) {
      dslabevel = 15;
      setdata(dslabevel);
      resultText = "Now your new level is "+dslabevel.toString()+" Best of luck";
      print("Now your new level is "+dslabevel.toString()+"Best of luck");
    } else if (resultScore >= 31) {
      dslabevel = 15;
      setdata(dslabevel);

      resultText = "Now your new level is "+dslabevel.toString()+" Best of luck";
      print("Now your new level is "+dslabevel.toString()+" Best of luck");
    } else if (resultScore >= 21) {
      dslabevel = 14;
      setdata(dslabevel);

      resultText = "Sorry your new level is "+dslabevel.toString()+" not updated. Best of luck";
      print("Sorry your new level is "+dslabevel.toString()+"not updated. Best of luck");
    } else if (resultScore >= 1) {
      dslabevel = 14;
      setdata(dslabevel);

      resultText = "Sorry your new level is "+dslabevel.toString()+" not updated. Best of luck";
      print("Sorry your new level is"+dslabevel.toString()+" not updated. Best of luck");
    } else {
      dslabevel = 14;
      setdata(dslabevel);
      resultText = "Sorry your new level is "+dslabevel.toString()+" not updated. Best of luck";
      print("Sorry your new level is"+dslabevel.toString()+"not updated. Best of luck");
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          if (resultScore<31)
            FlatButton(
            child: Text(
              'Restart Quiz!',
            ), //Text
            textColor: Colors.blue,
            onPressed: resetHandler,
          ) else Container(), //FlatButton
        ], //<Widget>[]
      ), //Column
    );
  }
}
