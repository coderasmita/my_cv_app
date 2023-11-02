import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text(
            "Hello, I'm Asmita Koirala. I am currently studying Bachelor's in IT at Aadim National College and now I'm also learning flutter developer and is involved in Software Engeenering intern at Thulo Technology Pvt.Ltd. I'm currently living in Kathmandu.",
            style: TextStyle(fontSize: 15, fontFamily: "NotoSans-Regular"),
          ),
        ],
      ),
    );
  }
}
