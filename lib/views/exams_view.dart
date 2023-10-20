import 'package:elearning/views/student_home.dart';
import 'package:flutter/material.dart';

import '../Customs/custom_app_bar.dart';

class ExamsPage extends StatelessWidget {
  const ExamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Exams'),
      //   backgroundColor: Colors.red,
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(title: "Exam "),
          SizedBox(height: 40,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                ExamCard(date: '5/10/2023', subject: 'Math', score: 95),
                ExamCard(date: '7/10/2023', subject: 'Science', score: 88),
                ExamCard(date: '9/10/2023', subject: 'History', score: 92),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar:ExpandendComp(
        color: Colors.red,
        image: "Assets/result.png",
        title: "Total Exams = 3",
        fontSize: 40,



      ) ,
      // bottomNavigationBar: TotalExams(total: 3),
    );
  }
}

class ExamCard extends StatelessWidget {
  final String date;
  final String subject;
  final int score;

  ExamCard({required this.date, required this.subject, required this.score});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Icon(Icons.assignment),
        title: Text('Date: $date'),
        subtitle: Text('Subject: $subject\nScore: $score'),
      ),
    );
  }
}

class TotalExams extends StatelessWidget {
  final int total;

  TotalExams({required this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          'Total Exams: $total',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}

