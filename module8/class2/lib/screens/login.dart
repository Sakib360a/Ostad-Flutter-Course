import 'package:class2/screens/dashboard.dart';
import 'package:class2/screens/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF1EA),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 305,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFCE2CE),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(500),
                          bottomRight: Radius.circular(500),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      //height: 25,
                      color: Colors.transparent,
                    ),
                  ],
                ),
                Positioned(
                  top: 40,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 50,
                        color: Color(0xFF553922),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 85,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Image.asset(
                      'assets/images/young_man.png',
                      height: 240,
                      width: 240,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 340),
                  child: Center(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 70,
                            width: 370,
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              controller: phoneController,
                              decoration: InputDecoration(
                                label: Text(
                                  'Phone',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    top: 2,
                                    left: 22,
                                    right: 7,
                                  ),
                                  child: Icon(Icons.email, size: 22),
                                ),
                                floatingLabelStyle: TextStyle(
                                  color: Color(
                                    0xFFFB8A00,
                                  ), // Orange when focused
                                  fontSize: 28,
                                ),
                                hintText: 'Enter your phone number',
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF616161),
                                  fontWeight: FontWeight.w400,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 20,
                                  horizontal: 51,
                                ),
                                border: OutlineInputBorder(
                                  // Add this
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: BorderSide(
                                    color: Color(0xFF757575),
                                    width: 2,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: BorderSide(
                                    color: Color(0xFF757575),
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: BorderSide(
                                    color: Color(
                                      0xFFFB8A00,
                                    ), // Orange when active
                                    width: 2,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                  ),
                                ),
                                errorStyle: TextStyle(height: 0),
                              ),

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your phone';
                                } else if (value.length != 11) {
                                  return 'Please enter correct phone number';
                                } else {
                                  return null;
                                }
                              },
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 30),
                          SizedBox(
                            height: 70,
                            width: 370,
                            child: TextFormField(
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              controller: passwordController,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF757575),
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    top: 0,
                                    left: 22,
                                    right: 7,
                                  ),
                                  child: Icon(Icons.lock, size: 22),
                                ),
                                floatingLabelStyle: TextStyle(
                                  color: Color(
                                    0xFFFB8A00,
                                  ), // Orange when focused
                                  fontSize: 28,
                                ),
                                hintText: 'Enter your password',
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF616161),
                                  fontWeight: FontWeight.w400,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 20,
                                  horizontal: 51,
                                ),
                                border: OutlineInputBorder(
                                  // Add this
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: BorderSide(
                                    color: Color(0xFF757575),
                                    width: 2,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: BorderSide(
                                    color: Color(0xFF757575),
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: BorderSide(
                                    color: Color(
                                      0xFFFB8A00,
                                    ), // Orange when active
                                    width: 2,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                  ),
                                ),
                                //   errorStyle: TextStyle(height: 1.8,fontSize: 14),
                                //
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter password';
                                } else if (value.length < 6) {
                                  return 'Password must be at least 6 character long';
                                } else {
                                  return null;
                                }
                              },
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.only(right: 20),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF616161),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            width: double.infinity,
                            height: 65,
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                      Color(0xFFFCE2CE),
                                    ),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                      Color(0xFF92613A),
                                    ),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login Success!')));
                                  final snackBar = SnackBar(
                                    content: Text(
                                      "Login Successful !",
                                      style: TextStyle(
                                        color: Color(0xFF92613A),fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    backgroundColor: Color(0xFFFCE2CE),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(45),
                                    ),
                                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Positioning
                                    elevation: 6,
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Dashboard(),
                                    ),
                                  );
                                }
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            padding: EdgeInsets.only(left: 150, right: 150),
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey.shade400,
                                    thickness: 3,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Text(
                                    'Or',
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey.shade400,
                                    thickness: 3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            padding: EdgeInsets.only(left: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(70),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.111),
                                      ),
                                    ],
                                  ),
                                  child: Image.asset(
                                    'assets/images/Google4x.png',
                                    scale: 3,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(70),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.111),
                                      ),
                                    ],
                                  ),
                                  child: Image.asset(
                                    'assets/images/Facebook4x.png',
                                    scale: 3,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(70),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.111),
                                      ),
                                    ],
                                  ),
                                  child: Image.asset(
                                    'assets/images/Apple4x.png',
                                    scale: 3,
                                  ),
                                ),
                                SizedBox(width: 20),
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account ?',
                                style: TextStyle(fontSize: 17),
                              ),
                              //SizedBox(width: 0,),
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 3,
                                  ), // adjust to taste
                                  minimumSize: Size(
                                    0,
                                    0,
                                  ), // removes default size constraints
                                  tapTargetSize: MaterialTapTargetSize
                                      .shrinkWrap, // shrinks touch target
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Signup(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFFC3824E),
                                    fontWeight: FontWeight.w600,
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
            ),
          ],
        ),
      ),
    );
  }
}
