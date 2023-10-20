import 'package:elearning/Customs/custom_app_bar.dart';
import 'package:elearning/widgets/bottom_navigation_bar_parent.dart';
import 'package:elearning/widgets/bottom_navigation_bar_student.dart';
import 'package:elearning/widgets/bottom_navigation_bar_teacher.dart';
import 'package:flutter/material.dart';

import '../ConstsColor/constcolor.dart';

class TypeView extends StatelessWidget {
  const TypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Column(
        children: [
          const CustomAppBar(title: "Welcome"),
         const SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                   GestureDetector(
                  onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const CustomBottomNavigationBarStudent();
                   }));
                  },
                   child: Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                      color: ConstColors.primaryColor,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: const Color(0xFF414141))),
                  child: const Center(
                    child: Text(
                      "Student",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
             ),
                          const SizedBox(height: 48,),

              GestureDetector(
                   onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const CustomBottomNavigationBarParent();
                   }));
                  },
                   child: Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                      color: ConstColors.primaryColor,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: const Color(0xFF414141))),
                  child: const Center(
                    child: Text(
                      "Parent",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
             ),
             const SizedBox(height: 48,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const CustomBottomNavigationBarTeacher();
                   }));
                  },
                   child: Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                      color: ConstColors.primaryColor,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: const Color(0xFF414141))),
                  child: const Center(
                    child: Text(
                      "Teacher",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
             ),
              ],
            ),
          )
        ],
      ),
    );
  }
}