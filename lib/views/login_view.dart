import 'package:elearning/Customs/custom_app_bar.dart';
import 'package:elearning/Customs/custom_main_button.dart';
import 'package:elearning/Customs/custom_text_form_field.dart';
import 'package:elearning/views/sign_up.dart';
import 'package:elearning/views/type_view.dart';
import 'package:flutter/material.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(title: "Login")
      ,Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child:   Column(
          children: [
        const SizedBox(height: 50,),
        CustomTextFormField(  obscureText: false, isPassword: false, lable: "School code"),
        const SizedBox(height: 32,),
      
        CustomTextFormField(  obscureText: false, isPassword: false, lable: "Email"),
             const SizedBox(height: 16,),
      
        CustomTextFormField(  obscureText: false, isPassword: false, lable: "Password"),
        const SizedBox(height: 32,),
      
        CustomMainButton(text: "Login", onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const TypeView();
          }));
        }),
        const SizedBox(height: 32,),
      
           GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const SignupView();
          }));
        },
         child: Container(
                width: 150,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: const Color(0xFF414141))),
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
        ),
      )
      
          ],
        ),
      ),
    );
  }
}