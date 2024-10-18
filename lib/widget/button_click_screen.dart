import 'package:flutter/material.dart';

class ButtonClickScreen extends StatelessWidget {
  const ButtonClickScreen({super.key, required this.color, required this.label});

  final Color color;
  final String label;

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
          padding: const EdgeInsets.all(8.0),
          child: Text(label,style: const TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}
