import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: SafeArea(
        
        child: SingleChildScrollView(
          
          child: Center(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                const SizedBox(height: 50.0), 
                
                Image.asset(
                  'images.png', 
                  height: 150, 
                  width: 150
                ),
                const SizedBox(height: 30.0), 

                
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Column(
                    children: <Widget>[
                      /
                      
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      const SizedBox(height: 16.0),

                      
                      const TextField(
                        obscureText: true, 
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ),
                      const SizedBox(height: 24.0),

                      
                      SizedBox(
                        width: double.infinity, 
                        child: ElevatedButton(
                          onPressed: () {
                            
                            debugPrint('Login button pressed');
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                          ),
                          child: const Text('Login'),
                        ),
                      ),
                      const SizedBox(height: 20.0),

                      
                      TextButton(
                        onPressed: () {
                          
                          Navigator.pushNamed(context, '/register');
                        },
                        child: const Text(
                          "Don't have an account? Create Account",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
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
