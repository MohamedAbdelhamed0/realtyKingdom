import 'package:flutter/material.dart';

class OfferTypeDropdown extends StatefulWidget {
  const OfferTypeDropdown({super.key});

  @override
  _OfferTypeDropdownState createState() => _OfferTypeDropdownState();
}

class _OfferTypeDropdownState extends State<OfferTypeDropdown> {
  // List of offer types for real estate
  final List<String> _offerTypes = [
    'Sale',
    'Rent',
    'Lease',
    'Auction',
  ];

  // Currently selected offer type
  String? _selectedOfferType;

  @override
  void initState() {
    super.initState();
    // Default to the first option
    _selectedOfferType = _offerTypes.first;
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
          value: _selectedOfferType,
          items: _offerTypes.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: FittedBox(fit: BoxFit.scaleDown, child: Text(value)),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedOfferType = newValue;
            });
          },
          hint: const Text('Select Offer Type'),
        ),
      ),
    );
  }
}
