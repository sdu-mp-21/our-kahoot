import 'package:flutter/material.dart';

class SwitchWidget extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  // ignore: use_key_in_widget_constructors
  const SwitchWidget({
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) => ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: () => onChanged(!value),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        trailing: Transform.scale(
          scale: 1.3,
          child: Switch(
            value: value,
            // ignore: deprecated_member_use
            activeTrackColor: Theme.of(context).accentColor,
            onChanged: onChanged,
          ),
        ),
      );
}
