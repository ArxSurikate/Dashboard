import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpg_app/service/provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer(
      {super.key, required this.currentIndex});
  final int currentIndex;

  static const Map<String, IconData> datas = {
    "Profil": Icons.padding,
    "Formations": Icons.padding,
    "Messages": Icons.padding,
    "Daily mission": Icons.padding,
    "Dashboard": Icons.dashboard
  };

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(Icons.favorite),
          ),
          Column(
            children: datas.entries.map((e) {
              int index = datas.keys.toList().indexOf(e.key);
              return ListTile(
                leading: Icon(e.value),
                title: Text(e.key),
                tileColor: (currentIndex == index)
                    ? Colors.grey[300]
                    : Colors.grey[100],
                onTap: () => Provider.of<CustomProvider>(context,listen: false).changeIndex(index),
              );
            }).toList(),
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
