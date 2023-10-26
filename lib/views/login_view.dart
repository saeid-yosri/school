import 'package:elearning/Customs/custom_app_bar.dart';
import 'package:elearning/Customs/custom_main_button.dart';
import 'package:elearning/Customs/custom_text_form_field.dart';
import 'package:elearning/views/sign_up.dart';
import 'package:elearning/views/type_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ConstsColor/constcolor.dart';
import '../widgets/bottom_navigation_bar_parent.dart';
import '../widgets/bottom_navigation_bar_student.dart';
import '../widgets/bottom_navigation_bar_teacher.dart';

class Loginview extends StatefulWidget {
  const Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  List<String> items = ['Please select your type', 'Student', 'Parent', 'Teacher'];
  String? selectedItem = 'Please select your type';
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: ConstColors.primaryColor,
          ),
        ),
        title: Text("Login",
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: ConstColors.primaryColor)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 300,
                child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide:
                                BorderSide(width: 3, color: Colors.red,),)),
                    value: selectedItem,
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Center(
                                child: Text(
                                  item,
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ))
                        .toList(),icon: Icon(Icons.arrow_drop_down_circle_sharp,color: Colors.red),isExpanded: true,

                    onChanged: (item) => setState(() {
                          selectedItem = item;
                          if (item == 'Please select') {
                            isSelected = false;
                          } else {
                            isSelected = true;
                          }
                        })),
              ),
              isSelected
                  ? Column(
                      children: [
                        CustomTextFormField(
                            obscureText: false,
                            isPassword: false,
                            lable: "School code"),
                        const SizedBox(
                          height: 32,
                        ),
                        CustomTextFormField(
                            obscureText: false,
                            isPassword: false,
                            lable: "Phone number"),
                        const SizedBox(
                          height: 16,
                        ),
                        CustomTextFormField(
                            obscureText: false,
                            isPassword: false,
                            lable: "Password"),
                        const SizedBox(
                          height: 32,
                        ),
                        CustomMainButton(
                            text: "Login",
                            onTap: () {
                              // Navigator.push(context,
                              //     MaterialPageRoute(builder: (context) {
                              //   return const TypeView();
                              // }));

                              if (selectedItem == 'Student') {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const CustomBottomNavigationBarStudent();
                                }));
                              } else if (selectedItem == 'Parent') {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const CustomBottomNavigationBarParent();
                                }));
                              } else if (selectedItem == 'Teacher') {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const CustomBottomNavigationBarTeacher();
                                }));
                              }
                            }),
                        const SizedBox(
                          height: 32,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const SignupView();
                            }));
                          },
                          child: Container(
                            width: 150,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border:
                                    Border.all(color: const Color(0xFF414141))),
                            child: const Center(
                              child: Text(
                                "Not registered?",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
