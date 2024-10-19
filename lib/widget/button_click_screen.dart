import 'package:flutter/material.dart';

class ButtonClickScreen extends StatelessWidget {
  const ButtonClickScreen({super.key, required this.color, required this.label,  this.icon});

  final Color color;
  final String label;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    Size mediaquery = MediaQuery.of(context).size;

    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: mediaquery.width * 0.2, vertical: 6),
            backgroundColor: color, // background
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )// foreground
        ),
        onPressed: () {},
        child:  Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: mediaquery.width*0.45,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Icon(icon),
                  SizedBox(width: mediaquery.width*0.02,),
                  Text(label,style: const TextStyle(fontSize: 20),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
