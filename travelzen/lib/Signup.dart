

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       // height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/travling.png"))),
            ),
            Container(
              height: 150,
              width: 300,
              
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text("Let's get started!",style: Theme.of(context).textTheme.headline4,),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Fill out a few details to get",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Signed up", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                       width: 400,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Name",
                            hintText: "Enter Your Name",
                            enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1,),
                          borderRadius: BorderRadius.circular(50),)
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        height: 60,
                        width: 400,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "Enter your Email",
                            enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1,),
                          borderRadius: BorderRadius.circular(50),)),
                        ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        height: 60,
                        width: 400,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter your password",
                            enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1,),
                          borderRadius: BorderRadius.circular(50),),
                            
                        ),),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        height: 60,
                        width: 400,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Re-type",
                            hintText: "Re-enter your password",
                            enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1,),
                          borderRadius: BorderRadius.circular(50),),
                        ),),
                      ),
                    ],
                  ),
                  ),
                  ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/signin');}, child: Text("Sign up"),style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 51, 70, 175),),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      TextButton(onPressed: (){Navigator.pushNamed(context, '/signin');}, child: Text("Sign in Here!"))
                      
                    ],
                  )
          ],
        ),
      ),
    );
  }
}