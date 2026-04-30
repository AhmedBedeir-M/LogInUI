import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginui/login_page.dart';
import 'package:loginui/resoursces/routes_manager.dart';
import 'package:loginui/widgets/botton.dart';
import 'package:loginui/widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController firstName = TextEditingController();
    TextEditingController lastName = TextEditingController();
    TextEditingController userName = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 130),
                  Text(
                    'Let’s Get Started!',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Create an account on MNZL to get all features',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.normal,
                      fontSize: 16 ,
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomTextField(controller: firstName, hint: 'First Name', icon: Icons.percent_outlined),
                  SizedBox(height: 20),
                  CustomTextField(controller: lastName, hint: 'Last Name', icon: Icons.percent_outlined),
                  SizedBox(height: 20),
                  CustomTextField(controller: userName, hint: 'User Name', icon: Icons.percent_outlined),
                  SizedBox(height: 20),
                  CustomTextField(controller: email, hint: 'Email', icon: Icons.email_outlined),
                  SizedBox(height: 20),
                  CustomTextField(controller: password, hint: 'Password', icon: Icons.lock_outline),
                  SizedBox(height: 20),
                  CustomTextField(controller: confirmPassword, hint: 'Confirm Password',icon: Icons.lock_outline),
                  SizedBox(height: 50),
                  Botton(name: 'CREATE'),
                  SizedBox(height: 50),
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
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign in',
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
      ],
    );
  }
}
