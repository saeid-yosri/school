import 'package:elearning/Customs/custom_app_bar.dart';
import 'package:elearning/views/sign_up.dart';
import 'package:elearning/views/student_home.dart';
import 'package:elearning/views/time_table_view.dart';
import 'package:flutter/material.dart';

import 'attendanceView.dart';
import 'holidays_view.dart';

class ParentHome extends StatelessWidget {
  const ParentHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(title: "PARENT Home" ,
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ExpandendComp(
                      color: const Color.fromARGB(255, 34, 8, 164),
                      image: "Assets/child.png",
                      title: "Children"),
                  SquareComp(
                    onTap1: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return const SignupView();
                          }));
                    },
                    firstColor: Colors.red,
                    firstImage: "Assets/user.png",
                    firstTitle: "Profile",
                    secoundColor: Colors.orange,
                    secoundImage: "Assets/time.png",
                    secoundTitle: "Time table",
                    onTap2: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const TimeTableView();
                      }));
                    },
                  ),
                  ExpandendComp(
                    color: const Color.fromARGB(255, 244, 219, 35),
                    image: "Assets/anouncements.png",
                    title: "Anouncements",
                  ),
                  SquareComp(
                    firstColor: Colors.pink[200],
                    firstImage: "Assets/woman.png",
                    firstTitle: "Parent guide",
                    secoundColor: Colors.grey[800],
                    secoundImage: "Assets/holiday.png",
                    secoundTitle: "Holidays",
                    onTap2: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const holiDaysView();
                      }));
                    },
                  ),
                  SquareComp(
                    secoundColor: Colors.teal,
                    secoundImage: "Assets/offers.png",
                    secoundTitle:  "Offers",
                    onTap2: () {

                    },
                    firstColor: const Color.fromARGB(255, 223, 212, 112),
                    firstImage: "Assets/Attendance1.png",
                    firstTitle: "Attendance",
                    onTap1: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const AttendanceView();
                      }));
                    },


                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
