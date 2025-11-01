import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/icon.png", height: 250.0,
              width: 250.0, fit: BoxFit.cover,),

              SizedBox(height: 10.0,),
              
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  prefixIcon: Icon(Icons.email_outlined),
                  suffixIcon: Icon(Icons.account_circle_outlined),
                  hintText: "Enter your email"
                ),
              ),


              SizedBox(height: 20.0,),
              //2nd

              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(

                         borderRadius: BorderRadius.circular(10)
                    ),

                    prefixIcon: Icon(Icons.password_outlined),
                    suffixIcon: Icon(Icons.remove_red_eye),

                    hintText: "Enter your password",

                ),
              ),
            SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forget password")
                ],
              ),
              SizedBox(height: 15.0,),

              Container(
                height: 40.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(child: Text("Login",style: TextStyle(
                  fontSize: 20.0,
                    color: Colors.white,
                  fontWeight: FontWeight.bold
                ),)),
              )
            ],
          )),

          Column(children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [ Text("you habe dont account?"),
               SizedBox(width: 10.0,),Text("Signup")],

           )

          ],)
        ],
      ),),
    );
  }
}
