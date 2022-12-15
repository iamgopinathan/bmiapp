import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/constants/appconstants.dart';
import 'package:flutter_application_1/widgets/leftbar.dart';
import 'package:flutter_application_1/widgets/rightbar.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  TextEditingController _heightcontroller = TextEditingController();
  TextEditingController _weightcontroller = TextEditingController();

  double _bmiresult =0;
  String _txtresult = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR', style:
                TextStyle( fontWeight: FontWeight.w300),),
                elevation: 0,
                centerTitle: true,
        
      ),
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                    width: 130,
                    child: TextField(
                      controller: _heightcontroller,
                      
                      style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.yellow),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Height",
                        hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8)),
                      ),
                    ),
                  ),

                  Container(
                    width: 130,
                    child: TextField(
                      controller: _weightcontroller,
                      
                      style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.yellow),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Weight",
                        hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8)),
                      ),
                    ),
                  ),
              ],
            ),

            SizedBox(height: 30,),

            GestureDetector(
              onTap: (){

              double _h = double.parse(_heightcontroller.text);
              double _w = double.parse(_weightcontroller.text);
              setState(() {

                _bmiresult = _w /(_h * _h);
                if(_bmiresult > 25){
                  _txtresult = "you\'re over weight";
                }
                else if(_bmiresult >= 18.5 && _bmiresult <= 25){
                  _txtresult = "You Have Normal Weight";
                }
                else{
                  _txtresult = "You Are Under Weight";
                }
                
              });

              },
              child: Container(
                child: Text('Calculate',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.yellow),),
              ),
            ),

            SizedBox(height: 50,),

            Container(
              child: Text(_bmiresult.toStringAsFixed(2),style: TextStyle(fontSize: 90,color: Colors.yellow),),
            ),

            SizedBox(height: 30,),

            Visibility(

              visible: _txtresult.isNotEmpty,
              child: Container(
                child: Text(_txtresult),
              ),
            ),

           

           

          ],
        ),
      ),
      

    );
  }
}



