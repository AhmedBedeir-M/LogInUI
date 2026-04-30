import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginui/login_page.dart';
import 'package:loginui/resoursces/app_color.dart';
import 'package:loginui/widgets/logo_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),
        ()=> Navigator.push(context, MaterialPageRoute(builder: (c) => LoginPage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 115),
                LogoText(),
                SizedBox(height: 150),
                Image.asset('assets/images/victor.png'),
                SizedBox(height: 20,),
                Text('Lorem Ipsum ',style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                )),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Lorem Ipsum is a dummy text \n       used as placeholder ',
                          style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                          color: AppColor.norText,
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 0,
            bottom: 680,
            left: 71,
            child: SvgPicture.asset('assets/images/line.svg')),
        Positioned(
            bottom: 660,
            left: 45,
            child: SvgPicture.asset('assets/images/light.svg')),
        Positioned(
            bottom: 730,
            left: 142,
            child: SvgPicture.asset('assets/images/line.svg')),
        Positioned(
            bottom: 700,
            left: 117,
            child: SvgPicture.asset('assets/images/light.svg')),

      ],
    );
  }
}
