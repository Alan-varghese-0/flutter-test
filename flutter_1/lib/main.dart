import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("hello"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://static.vecteezy.com/system/resources/previews/001/849/553/non_2x/modern-gold-background-free-vector.jpg"))
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("login ",style: TextStyle(fontSize: 50,color: Colors.white),),
              SizedBox(height: 100,),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "enter your name",
                  hintStyle: TextStyle(color: Colors.amber),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orangeAccent),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(50)
                  )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "enter the password",
                  hintStyle: TextStyle(color: Colors.amber),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orangeAccent),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(50)
                  )
                ),),
              Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    gradbutton("login"),
                    SizedBox(height: 20,),
                    gradbutton("sign in"),
                  ],
                )
              ))
            ],
          ),
        ),
      ),
    );
  }

  Container gradbutton( String? name) {
    return Container(
                width: 300,
                height: 30,
                decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.red,Colors.orangeAccent]),
                borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(onPressed: (){}, child:Text(name!) ,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.black,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(20)
                  )
                  ),),
              );
  }
}
