import 'package:flutter/material.dart';

import '../main.dart';


class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen ({super.key, required this.title});

  final String title;

  @override
  State<UserProfileScreen> createState() => _MyUserProfileScreenPageState();
}

class _MyUserProfileScreenPageState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil de Usuario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/4645/4645949.png',
              height: 100,
              width: 100,),
            const TextField(
              decoration: InputDecoration(labelText: 'Nick'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Correo'),
            ),
            ElevatedButton(
              onPressed: () {
              },
              child: const Text('Editar Perfil'),
            ),
            ElevatedButton(
              child: const Text('Cerrar Sesión'),
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const LoginScreen(title: 'Login')));
              }
            ),
          ],
        ),
      ),
    );
  }
}

