import 'package:firebase_notes/Widget/Custom%20_Logo.dart';
import 'package:firebase_notes/Widget/Custom_Material_Button.dart';
import 'package:firebase_notes/Widget/Text_Form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 10, right: 15),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                ),
                const CustomLogo(),
                const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 10,
                ),
                const Text(
                  'Login to continue using the app',
                  style: TextStyle(fontSize: 22, color: Colors.grey),
                ),
                Container(
                  height: 10,
                ),
                const Text(
                  'Email',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 10,
                ),
                CustomTextForm(
                  hintText: 'Enter Your Email',
                  controler: email,
                  icon: const Icon(Icons.email),
                ),
                Container(
                  height: 10,
                ),
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 10,
                ),
                CustomTextForm(
                  hintText: 'Enter Your Password',
                  controler: password,
                  icon: const Icon(Icons.lock),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget Password?',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                CustomMaterialButton(
                  title: 'Login',
                  icon: const Icon(
                    Icons.login,
                    color: Colors.white,
                    size: 22,
                  ),
                  onpressed: () {},
                ),
                Container(
                  height: 13,
                ),
                const Center(
                  child: Text(
                    'OR Login with',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        color: Colors.white,
                        onPressed: () {},
                        child: Image.asset(
                          'assets/facebook.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        color: Colors.white,
                        onPressed: () {},
                        child: Image.asset(
                          'assets/google.jpeg',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        color: Colors.white,
                        onPressed: () {},
                        child: Image.asset(
                          'assets/apple.png',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                  ],
                ),
                Container(
                  height: 8,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('signUp');
                  },
                  child: const Center(
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: 'Dont\'t have an account?  ',
                          style: TextStyle(fontSize: 17),
                        ),
                        TextSpan(
                          text: 'Register',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
