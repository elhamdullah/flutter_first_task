import 'package:flutter/material.dart';
class SupRowContainer extends StatelessWidget {
  const SupRowContainer({super.key, required this.icon, required this.text});
final IconData icon;
final String text;


  @override
  Widget build(BuildContext context) {
    Size mediaquery = MediaQuery.of(context).size;
    return   Row(
      children: [
        SizedBox(width: mediaquery.width*0.04,),
        Container(
            decoration: BoxDecoration(
              color: Color(0xff2461dc),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Icon(icon,color: Colors.white,),
            )
        ),
        SizedBox(width: mediaquery.width*0.03,),
        Text(text,style: TextStyle(fontSize: mediaquery.width*0.04),),
      ],
    );
  }
}
