import 'package:flutter/material.dart';
import '../main.dart';


class PasswordRecoveryScreen extends StatefulWidget {
  const PasswordRecoveryScreen ({super.key, required this.title});

  final String title;

  @override
  State<PasswordRecoveryScreen> createState() => _MyPasswordRecoveryScreenPageState();
}

class _MyPasswordRecoveryScreenPageState extends State<PasswordRecoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: const Text('Recuperar Contraseña'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(labelText: 'Contraseña Actual'),
              obscureText: true,
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Nueva Contraseña'),
              obscureText: true,
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Repetir Contraseña'),
              obscureText: true,
            ),
            ElevatedButton(
              child: const Text('Cambiar Contraseña'),
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const LoginScreen(title: 'Login')));
              },
            ),
          ],
        ),
      ),
    );
  }
}

