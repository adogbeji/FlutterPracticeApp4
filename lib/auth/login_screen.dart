import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:practice_app_4/widgets/input_text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // EMAIL & PASSWORD CONTROLLERS
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),

              Image.asset(
                'assets/images/tiktok.png',
                width: 200,
              ),

              Text(
                'Welcome',
                style: GoogleFonts.acme(
                  fontSize: 34,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Glad To See You',
                style: GoogleFonts.acme(
                  fontSize: 34,
                  color: Colors.grey,
                ),
              ),
              
              InputTextWidget(
                textEditingController: emailTextEditingController,
                labelString: 'Email',
                iconData: Icons.email,
                isObscure: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
