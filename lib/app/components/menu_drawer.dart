import 'package:flutter/widgets.dart';

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
        ],
      ),
    );
  }
}
