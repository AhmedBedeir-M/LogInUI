import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:loginui/register_page.dart';
import 'package:loginui/resoursces/app_color.dart';
import 'package:loginui/widgets/botton.dart';
import 'package:loginui/widgets/custom_text_field.dart';
import 'package:loginui/widgets/logo_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 180),
                  LogoText(),
                  SizedBox(height: 10),
                  Text(
                    'Welcome back! ',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 9),
                  Text(
                    'Log in to existing LOGO account ',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 30),
                  CustomTextField(
                    controller: email,
                    hint: 'User',
                    icon: Icons.person_outline,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    controller: password,
                    hint: 'password',
                    icon: Icons.lock_outline,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Botton(name: 'LOG IN'),
                  SizedBox(height: 20),
                  Text(
                    'Or sign in using ',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Ionicons.logo_facebook, color: Colors.blue.shade900,size: 50,),
                      SizedBox(width: 30),
                      Icon(Ionicons.logo_google,color: Colors.red.shade700,size: 50,),
                      SizedBox(width: 30),
                      Icon(Ionicons.logo_apple,size: 50,),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account? ',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(left: 64, child: SvgPicture.asset('assets/images/rec2.svg')),
        Positioned(child: SvgPicture.asset('assets/images/rec1.svg')),
      ],
    );
  }
}
