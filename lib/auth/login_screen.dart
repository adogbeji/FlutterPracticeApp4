import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:practice_app_4/widgets/input_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Email & password Controllers
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  bool showProgressBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
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
                'Glad to see you',
                style: GoogleFonts.acme(
                  fontSize: 34,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              // EMAIL INPUT FIELD
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: InputFieldWidget(
                  textEditingController: emailTextEditingController,
                  labelString: 'Email',
                  iconData: Icons.email_outlined,
                  isObscure: false,
                ),
              ),

              const SizedBox(
                height: 8,
              ),

              // PASSWORD INPUT FIELD
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: InputFieldWidget(
                  textEditingController: passwordTextEditingController,
                  labelString: 'Password',
                  iconData: Icons.lock,
                  isObscure: true,
                ),
              ),

              // LOGIN BUTTON
              showProgressBar == false ? const Column() : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
