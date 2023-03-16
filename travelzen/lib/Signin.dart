import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
   final _formKey = GlobalKey<FormState>();
  @override
  //bool value = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(children: [
          Container(
              height: 325,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: 350,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/travling.png"))),
                  ),
                  Text(
                    "Welcome",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Login Here!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              )),
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        TextFormField(
                      decoration: InputDecoration(
                          label: Text("Email"),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          )),
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return "Enter you email";
                        } else {
                          return null; 
                        }
                      }),
                    ),
                    SizedBox(
                    height: 10,
                ),
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text("Password"),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          )),
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return "Enter you Password";
                        } else {
                          return null; 
                        }
                      }),
                    ),
                      ],
                    ),
                  )
                ),
                
               
                Row(children: [
                  SizedBox(
                    width: 200,
                  ),
                  TextButton(
                      onPressed: () {}, child: Text("Forgot your Password?"))
                ]),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
               if(_formKey.currentState!.validate()){
                 Navigator.pushNamed(context, '/homedirect');
               }
              },
              child: Text("Sign in"),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(250, 50),
                backgroundColor: Color.fromARGB(255, 53, 51, 182),
              )),
          SizedBox(
            height: 30,
          ),
          Text("OR"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.email),
                  label: Text("Email"),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(150, 50), backgroundColor: Colors.black)),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.facebook),
                  label: Text("Facebook"),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(150, 50), backgroundColor: Colors.black)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You don't have an account?"),
              TextButton(onPressed: () {}, child: Text("Signup Here!"))
            ],
          ),
        ]),
      ),
    );
  }
}
