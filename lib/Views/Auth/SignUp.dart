import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_notes/Widget/Custom%20_Logo.dart';
import 'package:firebase_notes/Widget/Custom_Material_Button.dart';
import 'package:firebase_notes/Widget/Text_Form.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController confrimPassword = TextEditingController();
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
                    'SignUp',
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
                  'Enter Your Personal Information',
                  style: TextStyle(fontSize: 22, color: Colors.grey),
                ),
                Container(
                  height: 10,
                ),
                const Text(
                  'Username',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 10,
                ),
                CustomTextForm(
                  hintText: 'Enter Your Username',
                  controler: username,
                  icon: const Icon(Icons.person),
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
                  icon: const Icon(Icons.visibility),
                ),
                Container(
                  height: 10,
                ),
                const Text(
                  'Confirm Password',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 10,
                ),
                CustomTextForm(
                  hintText: 'Confirm Password',
                  controler: confrimPassword,
                  icon: const Icon(Icons.visibility_off),
                ),
                Container(
                  height: 15,
                ),
                CustomMaterialButton(
                  title: 'SignUp',
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.white,
                    size: 22,
                  ),
                  onpressed: () async {
                    try {
                      final credential = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: email.text,
                        password: password.text,
                      );
                      Navigator.of(context).pushReplacementNamed('homePage');
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        print('The password provided is too weak.');
                      } else if (e.code == 'email-already-in-use') {
                        print('The account already exists for that email.');
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                ),
                Container(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('Login');
                  },
                  child: const Center(
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: 'You Have An Account?  ',
                          style: TextStyle(fontSize: 17),
                        ),
                        TextSpan(
                          text: 'Login',
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
