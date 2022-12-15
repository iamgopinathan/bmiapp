import 'package:flutter_application_1/constants/appconstants.dart';
import 'package:flutter/material.dart';


import 'package:material_color_utilities/material_color_utilities.dart';


class leftbar extends StatelessWidget {

final double barwidth;
 const  leftbar({Key ?key, required this.barwidth}):super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: barwidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),

            color: Colors.yellow,
          ),
        ),

      ],
    );
  
  }
}