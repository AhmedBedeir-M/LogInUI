import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginui/resoursces/app_color.dart';

class Botton extends StatelessWidget {
  const Botton({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 199,
      height: 53,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 100,
            spreadRadius: 2,
          ),
        ],
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: [AppColor.primary, AppColor.dark],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Text(
          name,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
