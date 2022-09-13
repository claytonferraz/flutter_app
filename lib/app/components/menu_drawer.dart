import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    'https://avatars.githubusercontent.com/u/1927579?v=4')),
            accountName: const Text('accountName'),
            accountEmail: const Text('accountEmail'),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Perfil"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/perfil');
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Sair"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          )
        ],
      ),
    );
  }
}
