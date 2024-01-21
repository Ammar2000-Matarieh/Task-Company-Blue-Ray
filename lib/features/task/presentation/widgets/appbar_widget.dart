import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 45,
      actions: const [
        Icon(Icons.person, color: Colors.black, size: 24),
      ],
      leading: Icon(
        Icons.list,
        color: Colors.blue.shade900,
        size: 24,
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        "Radiators Info",
        style: TextStyle(
            color: Colors.blue.shade900,
            fontSize: 17,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
