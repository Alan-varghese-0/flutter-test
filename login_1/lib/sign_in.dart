import 'package:flutter/material.dart';
import 'package:login_1/sign_up.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool selected = false;
  bool selected2 = false;
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
              flex: 8,
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
                        Text("Name",style: TextStyle(fontWeight: FontWeight.bold),),
                        Container(
                          width: 1250 ,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'enter the name',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                            ),
                          ),
                        ),
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
                        Text("Conform Password",style: TextStyle(fontWeight: FontWeight.bold),),
                        Container(
                          width: 1250,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'enter the conform password',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Checkbox(value: selected, onChanged: (value){
                                setState(() {
                                  selected = value!;
                                });
                              }),
                              Text('I agree to the Terms and Conditions'),
                              SizedBox(height: 10,),
                              Checkbox(value: selected2, onChanged: (value){
                                setState(() {
                                  selected2 = value!;
                                });
                              }),
                              Text('I read the Terms and Conditions'),
                            ],
                            
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: 500,
                                  child: ElevatedButton(onPressed: (){},
                                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black,foregroundColor: Colors.white),
                                  child: Text("Sign in")),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text("already have an accound"),
                                    TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp(),));}, child: Text("sign")),
                                  ],
                                ),
                              ],
                            )
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