 import 'package:flutter/material.dart';
import 'package:loginui/resoursces/app_color.dart';

class LogoText extends StatelessWidget {
  const LogoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [
          AppColor.primary,
          AppColor.secondary,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: Text(
        "LOGO",
        style: TextStyle(fontSize: 90,
            fontWeight: FontWeight.w400,
            fontFamily: 'Prime',
            color: Colors.white
        ),
      ),
    );
  }
}
