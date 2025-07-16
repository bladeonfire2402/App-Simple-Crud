import 'package:flutter/material.dart';
import 'login.dart';
import '../config/default.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: clBackground,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 64),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.network(
                  "https://st4.depositphotos.com/1010735/21836/v/450/depositphotos_218363620-stock-illustration-autumn-welcome-sign-colorful-maple.jpg",
                ),
                const SizedBox(height: 32),
                Text(
                  "Welcome to Flutter",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 32),
                const Text(
                  "Họ tên: {Họ tên sinh viên}\nMSSV: {Mã số sinh viên}",
                  style: TextStyle(color: Colors.orange, fontSize: 20),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: Text("Tiếp tục"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                    fixedSize: const Size(150, 70),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
