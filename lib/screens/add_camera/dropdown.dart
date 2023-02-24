import 'package:flutter/material.dart';

class DropDowCustom extends StatefulWidget {
  const DropDowCustom({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DropDowCustom> {
  // Initial Selected Value
  String dropdownvalue = '[ONVIF]';

  // List of items in our dropdown menu
  var items = [
    '[ONVIF]',
    '[User Define]',
    '2N',
    '3S',
    'A-LINKING',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButton(
          // Initial Value
          value: dropdownvalue,

          // Down Arrow Icon
          icon: const Icon(Icons.keyboard_arrow_down),

          // Array list of items
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
        ),
      ],
    );
  }
}
