import 'package:flutter/material.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? hasSettings;

  const BasicAppBar({super.key, required this.title, this.hasSettings});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: GestureDetector(
        child: const Icon(Icons.arrow_back_ios),
        onTap: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(title),
      actions: hasSettings ?? false
          ? [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.settings),
              ),
            ]
          : [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
