import 'package:flutter/material.dart';

class IconTitle extends StatelessWidget {
  final String label;
  final IconData iconData;
  final VoidCallback onTap;
  final bool highlighted;

  const IconTitle({this.label, this.iconData, this.onTap, this.highlighted});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          color: highlighted ? Colors.blue : Colors.black,
          letterSpacing: 0.8,
          fontWeight: FontWeight.w600,
        ),
      ),
      leading: Icon(
        iconData,
        color: highlighted ? Colors.blue : Colors.black,
      ),
      onTap: onTap,
      contentPadding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
    );
  }
}
