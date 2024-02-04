import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sterling/src/pages/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const routeName = '/settings';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var userEmail = TextEditingController();
  var userPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Image.asset(
                    'assets/images/sterling.png',
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 50),

            // Inputs

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      // Email

                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: CupertinoTextField.borderless(
                          placeholder: 'Email',
                          controller: userEmail,
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: CupertinoTextField.borderless(
                          placeholder: 'Password',
                          controller: userPassword,
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 30.0, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Forgot password?',
                              style: TextStyle(color: Colors.grey[900]),
                            ),
                            Text(
                              'Sign in with Face ID',
                              style: TextStyle(color: Colors.grey[600]),
                            )
                          ],
                        ),
                      ),

                      // Submit
                      ConstrainedBox(
                        constraints: const BoxConstraints(minWidth: 350.0),
                        child: CupertinoButton(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.red[600],
                            child: Text(
                              'Login',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => const Dashboard()));
                            }),
                      )
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 200),

            // Bottom Info
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Powered by Sterling.',
                  textAlign: TextAlign.left,
                ),
                Icon(Icons.info)
              ],
            )
          ],
        ),
      ),
    );
  }
}
