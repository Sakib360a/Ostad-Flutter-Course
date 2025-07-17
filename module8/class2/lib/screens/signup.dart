import 'package:class2/screens/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
   Signup({super.key});
   final _formKey = GlobalKey<FormState>();
   TextEditingController phoneController = TextEditingController();
   TextEditingController passwordController = TextEditingController();
   TextEditingController nameController = TextEditingController();

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
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 50,
                        color: Color(0xFF553922),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 50,
                  right: 0,
                  child: Center(
                    child: Image.asset(
                      'assets/images/young_man_sign.png',
                      height: 350,
                      width: 350,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 330),
                  child: Center(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 70,
                            width: 370,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              controller: nameController,
                              decoration: InputDecoration(
                                label: Text(
                                  'Name',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    top: 2,
                                    left: 22,
                                    right: 7,
                                  ),
                                  child: Icon(Icons.supervised_user_circle_sharp, size: 22),
                                ),
                                floatingLabelStyle: TextStyle(
                                  color: Color(
                                    0xFFFB8A00,
                                  ), // Orange when focused
                                  fontSize: 28,
                                ),
                                hintText: 'Enter your username',
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF616161),
                                  fontWeight: FontWeight.w400,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 20,
                                  horizontal: 51,
                                ),
                                border: OutlineInputBorder( // Add this
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: BorderSide(color: Color(0xFF757575), width: 2),
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
                              ),
                              validator: (value){
                                if(value==null || value.isEmpty)
                                  {return 'Enter your name';
                                  }
                                else{
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
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    top: 0,
                                    left: 22,
                                    right: 7,
                                  ),
                                  child: Icon(Icons.phone, size: 22),
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
                                border: OutlineInputBorder( // Add this
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: BorderSide(color: Color(0xFF757575), width: 2),
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
                              ),
                              validator: (value)
                              {
                                if(value==null || value.isEmpty)
                                  {
                                    return 'Enter your phone number';
                                  }
                                else if(value.length !=11)
                                  {
                                    return 'Please enter correct phone number';
                                  }
                                else {
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
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              controller: passwordController,
                              decoration: InputDecoration(
                                label: Text(
                                  'Password',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    top: 0,
                                    left: 22,
                                    right: 7,
                                  ),
                                  child: Icon(Icons.password_outlined, size: 22),
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
                                border: OutlineInputBorder( // Add this
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: BorderSide(color: Color(0xFF757575), width: 2),
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

                              ),
                              validator: (value){
                                if(value ==null ||value.isEmpty)
                                  {
                                    return 'Enter your password';
                                  }
                                else if(value.length<6)
                                  {
                                    return 'Password must be at least 6 character long';
                                  }
                                else {
                                return null;
                                }
                              },
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 30),
                          SizedBox(height: 10),

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
                                if(_formKey.currentState!.validate()){
                                  //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Account Created')));
                                  final snackBar = SnackBar(
                                    content: Text(
                                      'Account Created Successfully! Please Login',
                                      style: TextStyle(
                                        color: Color(0xFF92613A), // Text color
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center, // Align text
                                    ),
                                    backgroundColor: Color(0xFFFCE2CE), // Background color
                                    behavior: SnackBarBehavior.floating, // Optional: makes it float above content
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(45), // Rounded corners
                                    ),
                                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20), // Positioning
                                    elevation: 6, // Shadow depth
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                                }
                              },
                              child: Text(
                                'Create Account',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
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
