import 'package:flutter/material.dart';
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Colors.blue,
      leading: const Icon(
        Icons.home,
        color: Colors.white,
      ),
      title: const Text(
        "Sqlite CRUD",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
