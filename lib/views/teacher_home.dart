import 'package:elearning/Customs/custom_app_bar.dart';
import 'package:elearning/views/assignmentsView.dart';
import 'package:elearning/views/student_home.dart';
import 'package:elearning/views/time_table_view.dart';
import 'package:flutter/material.dart';

import 'sign_up.dart';

class TeacherHome extends StatelessWidget {
  const TeacherHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(title: "TEACHER Home",
              icon: Icons.perm_identity_outlined,
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
                      image: "Assets/book.png",
                      title: "Subjects",
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return const SignupView();
                            }));
                      }
                  ),
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
                    firstColor: Colors.grey[800],
                    firstImage: "Assets/holiday.png",
                    firstTitle: "Holidays",
                    onTap2: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const AssignmentsView();
                      }));
                    },
                    secoundColor: const Color.fromARGB(255, 64, 230, 70),
                    secoundImage: "Assets/assignmentpng.png",
                    secoundTitle: "Assignment",
                  ),
                  SquareComp(
                    firstColor: Colors.pink[200],
                    firstImage: "Assets/woman.png",
                    firstTitle: "Parent guide",
                    secoundColor: Colors.red,
                    secoundImage: "Assets/health.png",
                    secoundTitle: "Health tips",
                  ),
                  ExpandendComp(
                    color: Colors.pink,
                    image: "Assets/exam.png",
                    title: "Exams , Quizes",
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
