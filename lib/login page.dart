import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ott/netflix%20user%20page.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              height: 200,
              width: 400,
            ),
            Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://images.indianexpress.com/2022/03/Netflix.jpg?w=414")
                ),
              ),
            ),
            Container(
              width: 320,
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: "Enter your email"
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 320,
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: "Enter password"
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            GestureDetector (
              child: Container(
                height: 60,
                width:320 ,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {

                    }
                  },
                  child:
                  GestureDetector(
                    child: Text("Sign in",
                        style:
                        TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)
                    ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => nup(),
                          ),
                        );
                      }
                  ),
                ),
              ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => nup(),
                    ),
                  );
                }
            ),
            Container(
                width: 320,
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot password?",style: TextStyle(color: Colors.white),))),
            Container(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New to Netflix?",style: TextStyle(color: Colors.white ),),
                Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),

              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}