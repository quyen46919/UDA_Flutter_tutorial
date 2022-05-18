import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController(
      text: 'tuantran@gmail.com'
  );
  final TextEditingController _passwordController = TextEditingController(
      text: 'tuantran@gmail.com'
  );
  Color cyanColor = const Color(0xff00CEA6);
  Color grey = const Color(0xff777777);
  Color darkGrey = const Color(0xff555555);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            FittedBox(
              child: Image.asset('assets/images/auth_bg.jpg')
            ),
            Positioned(
              top: 160.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40.0,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(200.0),
                            topLeft: Radius.circular(200.0)
                        ),
                      ),
                      child: const Text('', style: TextStyle(fontSize: 34.0),),
                    ),
                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height + 160,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 35.0,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                            const SizedBox(height: 23.0),
                            Text(
                                'Welcome back, Tuan Tran',
                                style: TextStyle(
                                    fontSize: 24.0,
                                    color: cyanColor
                                )
                            ),
                            const SizedBox(height: 38.0),
                            const Text(
                                'Email',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500
                                )
                            ),
                            TextFormField(
                                decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: cyanColor),
                                  ),
                                ),
                              controller: _emailController,
                            ),
                            const SizedBox(height: 23.0),
                            const Text(
                                'Password',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500
                                )
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: cyanColor),
                                ),
                              ),
                              controller: _passwordController,
                            ),
                            const SizedBox(height: 15.0),
                            Text(
                                'Forgot password',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: grey
                                )
                            ),
                            const SizedBox(height: 25.0),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: cyanColor,
                                borderRadius: const BorderRadius.all(Radius.circular(6)),
                              ),
                              child: const Center(
                                child: Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 25.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    'or sign in with',
                                  style: TextStyle(
                                    color: darkGrey,
                                    fontSize: 12.0
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 19.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 34.0,
                                  height: 34.0,
                                  child: Image.asset('assets/images/fb_logo.jpg'),
                                ),
                                const SizedBox(width: 8.0),
                                Container(
                                  width: 34.0,
                                  height: 34.0,
                                  child: Image.asset('assets/images/line_logo.jpg'),
                                ),
                                const SizedBox(width: 8.0),
                                Container(
                                  width: 34.0,
                                  height: 34.0,
                                  child: Image.asset('assets/images/talk_logo.jpg'),
                                )
                              ],
                            ),
                            const SizedBox(height: 77.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't you have an account? ",
                                  style: TextStyle(
                                    color: grey
                                  ),
                                ),
                                Text(
                                  "Sign up",
                                  style: TextStyle(
                                      color: cyanColor
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
