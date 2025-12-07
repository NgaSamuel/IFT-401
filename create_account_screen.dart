import 'package:flutter/material.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  
  Widget _buildSocialButton(String label, IconData icon) {
    return Expanded( 
      child: OutlinedButton.icon(
        onPressed: () {
          debugPrint('$label sign-in pressed');
        },
        icon: Icon(icon, size: 20.0),
        label: Text(label),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
        ),
      ),
    );
  }

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
                      // 2. Email Field
                      const TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      const SizedBox(height: 16.0),

                      // 3. Password Field
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ),
                      const SizedBox(height: 16.0),

                      
                      const TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.phone),
                        ),
                      ),
                      const SizedBox(height: 24.0),

                      
                      Row(
                        children: <Widget>[
                          
                          _buildSocialButton('Google', Icons.g_mobiledata),
                          const SizedBox(width: 10.0),
                          
                          _buildSocialButton('Apple', Icons.apple),
                        ],
                      ),
                      const SizedBox(height: 24.0),

                      
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            
                            debugPrint('Register button pressed');
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                          ),
                          child: const Text('Register'),
                        ),
                      ),
                      const SizedBox(height: 20.0),

                      
                      TextButton(
                        onPressed: () {
                          
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Already have an account? Login?",
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
