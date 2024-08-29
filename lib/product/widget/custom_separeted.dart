import 'package:flutter/material.dart';
import 'package:hive_example/product/service/model/user.dart';

class CustomSeparated<T extends User> extends StatelessWidget {
  const CustomSeparated({
    required this.items,
    required this.onPressed,
    super.key,
  });

  final List<T> items;
  final Function(T item) onPressed;
  final int index = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length ?? 0,
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          onTap: () => onPressed.call(item),
          leading:
              CircleAvatar(backgroundImage: NetworkImage(item.avatar ?? '')),
          title: Text(item.title),
          subtitle: Text(item.email ?? ''),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );
  }
}
