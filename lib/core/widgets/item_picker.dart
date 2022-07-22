import 'package:flutter/material.dart';

class ItemPicker extends StatelessWidget {
  const ItemPicker({
    Key? key,
    required this.title,
    this.value,
    this.titleStyle,
    this.source,
    this.onChanged,
  }) : super(key: key);

  final String title;
  final String? value;
  final TextStyle? titleStyle;
  final List<String?>? source;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    Widget _dropdown() {
      try {
        final List<DropdownMenuItem<String>> dropDownItems =
            <DropdownMenuItem<String>>[];

        for (final String? item in source!) {
          final DropdownMenuItem<String> newItem = DropdownMenuItem<String>(
            value: item,
            child: Text(item!),
          );
          dropDownItems.add(newItem);
        }

        return DropdownButton<String>(
          value: value,
          underline: const SizedBox.shrink(),
          elevation: 6,
          items: dropDownItems,
          onChanged: onChanged,
          alignment: AlignmentDirectional.centerEnd,
        );
      } catch (_) {
        return const Text('Error');
      }
    }

    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            title,
            style: titleStyle ?? const TextStyle(fontWeight: FontWeight.w500),
            overflow: TextOverflow.fade,
            softWrap: false,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: _dropdown(),
        ),
      ],
    );
  }
}
