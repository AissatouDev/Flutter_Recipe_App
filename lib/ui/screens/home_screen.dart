import 'package:flutter/material.dart';
import 'package:recipe_app/ui/screens/register_screen.dart';

import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffB81736),
              Color(0xff281537),
            ]
          )
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 150),
              child: Image(image: AssetImage('assets/images/logo.jpeg')),
            ),
            const SizedBox( height: 80,),
            const Text(
              'Bienvenue!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white
              ),
            ),
            const SizedBox( height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const LoginScreen())
                );
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(child: Text('CONNEXION', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ))),
              ),
            ),
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const RegisterScreen())
                );
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(child: Text('INSCRIPTION', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ))),
              ),
            ),
          ],
        ),
      ),
    ) ;
  }
}