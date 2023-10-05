import 'package:flutter/material.dart';
import 'package:segundo_parcial_pactica/pages/UserProfile.dart';
import 'pages/PasswordRecovery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(title: 'Login'),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.title});

  final String title;

  @override
  State<LoginScreen> createState() => _MyLoginScreenPageState();
}

class _MyLoginScreenPageState extends State<LoginScreen> {
  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(labelText: 'Correo'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
            ),
            ElevatedButton(
              child: const Text('Iniciar Sesión'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserProfileScreen(title: 'User porfile')),
                );
              },
            ),
            GestureDetector(
              child: const Text(
                'Recuperar Contraseña',
                style: TextStyle(
                  decoration: TextDecoration.underline, // Subrayar el texto
                  color: Colors.blue, // Color azul
                  fontWeight: FontWeight.bold, // Opcional: negrita para resaltar
                )),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PasswordRecoveryScreen(title: 'Password recovery')),
                );
              },
            ),
            GestureDetector(
              child: const Text(
                'Iniciar Sesión con Facebook',
                style: TextStyle(
                  decoration: TextDecoration.underline, // Subrayar el texto
                  color: Colors.blue, // Color azul
                  fontWeight: FontWeight.bold, // Opcional: negrita para resaltar
                )),
              onTap: (){},
            ),
            GestureDetector(
              child: const Text(
                'Iniciar Sesión con Google',
                style: TextStyle(
                  decoration: TextDecoration.underline, // Subrayar el texto
                  color: Colors.blue, // Color azul
                  fontWeight: FontWeight.bold, // Opcional: negrita para resaltar
                )),
              onTap: (){},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}