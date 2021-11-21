import 'package:flutter/material.dart';
import 'package:sample/ui/page/input_number_demo.dart';
import 'package:sample/ui/page/text_field_demo.dart';
import 'button_demo.dart';
import 'checkbox_demo.dart';
import 'dropdown_demo.dart';
import 'image_demo.dart';
import 'prgress_demo.dart';
import 'radio_demo.dart';

import 'border_demo.dart';

class WidgetList extends StatelessWidget {
  WidgetList({Key? key}) : super(key: key);

  final List _data = [
    {'title': 'Border', 'page': const BorderDemo()},
    {'title': 'Button', 'page': const ButtonDemo()},
    {'title': 'Image', 'page': const ImageDemo()},
    {'title': 'Progress', 'page': const ProgressDemo()},
    {'title': 'Radio', 'page': const RadioDemo()},
    {'title': 'Checkbox', 'page': const CheckboxDemo()},
    {'title': 'TextField', 'page': const TextFieldDemo()},
    {'title': 'Dropdown', 'page': const DropdownDemo()},
    {'title': 'InputNumber', 'page': const InputNumberDemo()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return _data[index]['page'];
                }));
              },
              child: ListTile(
                title: Text('${_data[index]['title']}'),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: _data.length),
    );
  }
}
