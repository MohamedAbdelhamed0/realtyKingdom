import 'package:flutter/material.dart';

class StreetDropdown extends StatefulWidget {
  const StreetDropdown({Key? key}) : super(key: key);

  @override
  _StreetDropdownState createState() => _StreetDropdownState();
}

class _StreetDropdownState extends State<StreetDropdown> {
  // List of streets
  final List<String> _streets = [
    '5th Avenue',
    'Madison Avenue',
    'Broadway',
    'Wall Street',
    'Park Avenue',
    'Lexington Avenue',
  ];

  // Currently selected street
  String? _selectedStreet;

  @override
  void initState() {
    super.initState();
    // Default to the first street option
    _selectedStreet = _streets.first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.grey,
          style: BorderStyle.solid,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          value: _selectedStreet,
          items: _streets.map<DropdownMenuItem<String>>((String street) {
            return DropdownMenuItem<String>(
              value: street,
              child: Text(street),
            );
          }).toList(),
          onChanged: (String? newStreet) {
            setState(() {
              _selectedStreet = newStreet;
            });
          },
          hint: const Text('Select Street'),
        ),
      ),
    );
  }
}
