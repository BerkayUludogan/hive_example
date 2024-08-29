import 'package:flutter/material.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile({
    super.key,
    this.onTap,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
  });

  final void Function()? onTap;
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
    );
  }
}
