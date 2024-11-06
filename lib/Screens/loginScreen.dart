import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/Style/backGround.dart';

import '../Style/customTextField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  bool isCheked = false;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          ScreenBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Icon(
                Icons.balance,
                size: 100,
                color: Colors.black45,
              ),
              Text(
                'Ainy Somadhan',
                style: GoogleFonts.montserrat(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Sign in to continue',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 100),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: buildAllTextFieldInColum(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column buildAllTextFieldInColum() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            "Phone",
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          style: TextStyle(color: Colors.blueAccent),
          decoration: customInputDecoration(
            hintText: '0123456789',
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            "Password",
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          style: TextStyle(color: Colors.blueAccent),
          decoration: customInputDecoration(
            hintText: 'Password',
            icon: Icons.lock,
          ).copyWith(
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: Colors.grey,
              ),
              onPressed: _togglePasswordVisibility,
            ),
          ),
          obscureText: _obscureText,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Checkbox(value: isCheked, onChanged: (bool? value){
              setState(() {
                isCheked = value!;
              });
            }),
            Text("Remember me",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
            Spacer(),
            TextButton(
              onPressed: () {

              },
              child: Text(
                'Forgot Password',
                style: TextStyle(fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          height: 48,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF3A5BB8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              // Handle login action
            },
            child: Text(
              'LOGIN',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,color: Colors.white
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account?",
              style: GoogleFonts.roboto(
                color: Colors.grey,
              ),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                // Navigate to Sign Up screen
              },
              child: Text(
                'Create a new account',
                style: GoogleFonts.roboto(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
