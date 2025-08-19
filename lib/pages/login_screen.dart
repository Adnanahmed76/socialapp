import 'package:flutter/material.dart';
import 'package:mediaapp/components/my_textfilled.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
       child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
Icon(Icons.person,size: 80,color: Theme.of(context).colorScheme.inversePrimary,),

const SizedBox(height: 20,),
            //app name
Text("M I N I M A L",style: TextStyle(fontSize: 20),),
const SizedBox(height: 20,),

            //email text
MyTextfilled(hintText: "email ", obsecureText: false, controller: emailController),
const SizedBox(height: 10,),
            //password textfileld
MyTextfilled(hintText: "Password", obsecureText: true, controller: passwordController)

            //forget password here



            //sign in button



            //don't have an accont

          ],
        ),
       )
     ),
    );
  }
}