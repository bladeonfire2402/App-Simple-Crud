import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tuan_01"),
      ),
      body: Padding(padding: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          spacing: 10,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXB9EI1ADczGCHhAH8h4r2CWSA_P5sCZOUBDCXW8KfWKq4efrKawB6cUg&s",
              ),
            ),
            Text("Welcome to flutter", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
            ),),
            Text("My name is Dinh Liem", style: TextStyle(
              color: Colors.orange,
              fontSize: 20,
            ),),
             Text("Student code: 22dh111919", style: TextStyle(
              color: Colors.orange,
              fontSize: 20,
            ),),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green
              ),
              onPressed: (){}, child: Text("Continue",style: TextStyle(color: Colors.purple),))
          ],
        ),
      ) ,
      ),
    );
  }
}