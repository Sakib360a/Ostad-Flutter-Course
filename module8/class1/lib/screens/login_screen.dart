import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  get actions => null;

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        shadowColor: Colors.black,
        elevation: 6,
        title: const Text(
          'Login',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child:Text("Welcome Back",textAlign: TextAlign.center,style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.teal,))),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                child: TextField(
                  controller: phoneController,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(fontSize: 19,),
                    hintText: 'Enter your phone number',
                    hintStyle: TextStyle(fontSize: 21,),
                    prefix: Icon(Icons.phone, size: 30),
                    suffix: Icon(Icons.check, size: 30),
                    alignLabelWithHint: true,
                  ),
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.phone,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 19),
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(fontSize: 22),
                    prefix: Icon(Icons.lock, size: 30),
                    suffix: Icon(Icons.remove_red_eye, size: 30),
                    alignLabelWithHint: true,
                  ),
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: SizedBox(
                  width: double.infinity,
                  height: 65,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      if (phoneController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please enter phone number")),
                        );
                      } else if (phoneController.text.length < 11 ||
                          phoneController.text.length > 11) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Phone number is not valid")),
                        );
                      } else if (passwordController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Password can't be empty")),
                        );
                      } else if (passwordController.text.length < 6) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Password is not valid")),
                        );
                      } else {
                        print(phoneController.text);
                        print(passwordController.text);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successful!")));
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                      elevation: MaterialStateProperty.all<double>(6),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.teal,
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      phoneController.clear();
                      passwordController.clear();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Cleared"),
                      ));

                    },
                    child: Icon(Icons.close, size: 30,),
                    style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                      elevation: MaterialStateProperty.all<double>(3),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
