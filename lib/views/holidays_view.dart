import 'package:elearning/Customs/custom_app_bar.dart';
import 'package:elearning/views/student_home.dart';
import 'package:flutter/material.dart';

class holiDaysView extends StatelessWidget {
  const holiDaysView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          CustomAppBar(title: "Holi Days")
          ,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 40,),
                ExpandendComp(color: Color.fromARGB(255, 4, 11, 147), image: "Assets/holidays1.png", title: "20/10/2023"),
                ExpandendComp(color: Colors.blue, image: "Assets/holidays1.png", title: "19/10/2023"),

                ExpandendComp(color: Colors.grey, image: "Assets/holidays1.png", title: "18/10/2023"),


              ],
            ),

          ),

        ],
      ),
      bottomNavigationBar:ExpandendComp(
        color: Colors.red,
        image: "Assets/holidays.png",
        title: "Total Holi Days = 3",
        fontSize: 40,



      ) ,
    );
  }
}