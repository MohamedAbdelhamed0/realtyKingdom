import 'package:flutter/material.dart';

class ZipCodeDropdown extends StatefulWidget {
  const ZipCodeDropdown({Key? key}) : super(key: key);

  @override
  _ZipCodeDropdownState createState() => _ZipCodeDropdownState();
}

class _ZipCodeDropdownState extends State<ZipCodeDropdown> {
  // List of zip codes
  final List<String> _zipCodes = [
    '10001', // New York
    '90001', // Los Angeles
    '60601', // Chicago
    '77001', // Houston
    '85001', // Phoenix
    '19101', // Philadelphia
  ];

  // Currently selected zip code
  String? _selectedZipCode;

  @override
  void initState() {
    super.initState();
    // Default to the first zip code option
    _selectedZipCode = _zipCodes.first;
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
          value: _selectedZipCode,
          items: _zipCodes.map<DropdownMenuItem<String>>((String zipCode) {
            return DropdownMenuItem<String>(
              value: zipCode,
              child: Text(zipCode),
            );
          }).toList(),
          onChanged: (String? newZipCode) {
            setState(() {
              _selectedZipCode = newZipCode;
            });
          },
          hint: const Text('Select Zip Code'),
        ),
      ),
    );
  }
}
