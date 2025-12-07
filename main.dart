import 'package:flutter/material.dart';
import 'login_screen.dart'; 
import 'create_account_screen.dart'; 

void main() {
  
  runApp(const AuthApp());
}

class AuthApp extends StatelessWidget {
  const AuthApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      
      initialRoute: '/',
      
      routes: {
        
        '/': (context) => const LoginScreen(),
        
        '/register': (context) => const CreateAccountScreen(),
      },
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
