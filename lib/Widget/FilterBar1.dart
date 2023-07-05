import 'package:flutter/material.dart';

import '../models/menus.dart';

class Filter extends StatefulWidget {
  Filter();
  //String value;

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  String? dropdownvalue = Menues.countries.first;
  bool isSelected = true;
  // List<Widget> tobeBuild = [
  //   AllCatagoriesList(),
  //   AllCatagoriesList(),
  //   AllCatagoriesList(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      margin: EdgeInsets.all(5),
      height: 35,
      decoration: BoxDecoration(
        color: isSelected ? Colors.amber : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(25),
      ),
      child: DropdownButton(
        //  selectedItemBuilder: (context) => tobeBuild,
        underline: Container(
          color: Colors.transparent,
        ),
        alignment: Alignment.center,
        //  icon: const Icon(Icons.keyboard_arrow_down),
        value: dropdownvalue,
        items: Menues.countries.map(
          (String items) {
            return DropdownMenuItem(
              alignment: Alignment.center,
              value: items,
              child: Text(
                items,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            );
          },
        ).toList()

        //  DropdownMenuItem(child: Text('Cairo,Egypt'))
        ,
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
            //isSelected = true;
          });
        },
      ),
    );
  }
}
