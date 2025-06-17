import 'package:flutter/material.dart';
import 'package:th_buoi_01/screen/welcome-screen/index.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tuan_01", style: TextStyle(fontSize: 20,color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 20,
          children: [
            SizedBox(height: 40,),
            Center(
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXB9EI1ADczGCHhAH8h4r2CWSA_P5sCZOUBDCXW8KfWKq4efrKawB6cUg&s",
              ),
            ),
            Text(
              "Login information".toUpperCase(),
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                hintText: "Email",
              )
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                hintText: "Password",
              )
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(value: isCheck, onChanged: (value)=>setState(() {
                      isCheck = value!;
                    })),
                    Text("Remember me", style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                Text("Forgot Password",style: TextStyle(
                  color: Colors.purple,
                   fontWeight: FontWeight.bold

                ),)
              ],
            ),

            SizedBox(
              width: double.infinity,
              child:
              ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                );
              }, child: Container(
                color: Colors.blue,
              child: Text("OK", style: TextStyle(color: Colors.purple),),
            )) ,
            ),

            Row(
              spacing: 6,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Dont have account ?"),
                Text("Regiser",style: TextStyle(color: Colors.purple),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
