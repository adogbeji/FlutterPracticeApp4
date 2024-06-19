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
  bool showProgressBar = false;

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

              // EMAIL INPUT FIELD
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: InputTextWidget(
                  textEditingController: emailTextEditingController,
                  labelString: 'Email',
                  iconData: Icons.email,
                  isObscure: false,
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // PASSWORD INPUT FIELD
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: InputTextWidget(
                  textEditingController: passwordTextEditingController,
                  labelString: 'Password',
                  iconData: Icons.lock_outline,
                  isObscure: true,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              showProgressBar == false
                  ? Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 54,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: const Center(
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
