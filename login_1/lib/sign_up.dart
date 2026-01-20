import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _LoginState();
}

class _LoginState extends State<SignUp> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black,Colors.brown])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("venture",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
            Expanded(
              flex: 1,
              child: SizedBox()),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(150)),
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                        SizedBox(height: 10,),
                        
                        SizedBox(height: 10,),
                        Text("Email",style: TextStyle(fontWeight: FontWeight.bold),),
                        Container(
                          width: 1250,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'enter your email',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Password",style: TextStyle(fontWeight: FontWeight.bold),),
                        Container(
                          width: 1250,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'enter the password',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 500,
                              child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.black,foregroundColor: Colors.white),
                              child: Text("Sign up")),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}