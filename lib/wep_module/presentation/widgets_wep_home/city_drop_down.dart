import 'package:flutter/material.dart';

class CityDropdown extends StatefulWidget {
  const CityDropdown({Key? key}) : super(key: key);

  @override
  CityDropdownState createState() => CityDropdownState();
}

class CityDropdownState extends State<CityDropdown> {
  // List of cities
  final List<String> _cities = [
    'New York',
    'Los Angeles',
    'Chicago',
    'Houston',
    'Phoenix',
    'Philadelphia',
  ];

  // Currently selected city
  String? _selectedCity;

  @override
  void initState() {
    super.initState();
    // Default to the first city option
    _selectedCity = _cities.first;
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
          value: _selectedCity,
          items: _cities.map<DropdownMenuItem<String>>((String city) {
            return DropdownMenuItem<String>(
              value: city,
              child: Text(city),
            );
          }).toList(),
          onChanged: (String? newCity) {
            setState(() {
              _selectedCity = newCity;
            });
          },
          hint: const Text('Select City'),
        ),
      ),
    );
  }
}
