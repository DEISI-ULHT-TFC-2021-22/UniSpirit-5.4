import 'package:flutter/material.dart';
import 'package:projectunispiritfinalt/screens/userProfile/pages/profile_page.dart';
import 'package:projectunispiritfinalt/services/auth_service.dart';
import 'package:provider/provider.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({Key? key}) : super(key: key);
  static const String route = 'perfil_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextButton.icon(
            onPressed: context.read<AuthService>().logout,
            icon: const Icon(Icons.remove),
            label: const Text('Logout'),
          ),
          const SizedBox(height: 10),
          const ProfilePage()

        ],

      ),
    );
  }
}
