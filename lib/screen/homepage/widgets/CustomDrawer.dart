import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(Icons.favorite),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profil"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.panorama_wide_angle_select_outlined),
            title: Text("Formations"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text("Messages"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text("Daily mission"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text("Dashboard"),
            tileColor: Colors.grey[300],
            onTap: () {},
          ),
          const Spacer(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Exit app."),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
