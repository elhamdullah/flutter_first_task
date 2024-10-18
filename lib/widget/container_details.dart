import 'package:flutter/material.dart';
import 'package:secondtask/widget/sup_row_container.dart';
class ContainerDetails extends StatelessWidget {
  const ContainerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaquery = MediaQuery.of(context).size;
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: mediaquery.height*0.02),
        width: mediaquery.width*0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffe2f2fe),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SupRowContainer(
                icon: Icons.local_hospital,
                text: "General, hospital",
              ),

              SizedBox(height: mediaquery.height*0.015,),
              SupRowContainer(
                icon: Icons.lock_clock,
                text: "10:00 - 19:00",
              ),

              SizedBox(height: mediaquery.height*0.015,),
              SupRowContainer(
                icon: Icons.location_on,
                text: "2 Gamaa st, Cairo",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
