import 'package:flutter/cupertino.dart';

import 'filter_widget_customRadioListTile.dart';

enum Amenity {
  airConditioning,
  ceilingFan,
  dishwasher,
  fireplace,
  microwave,
  patio,
  porch,
  refrigerator,
}

class AmenityFilterWidget extends StatefulWidget {
  const AmenityFilterWidget({Key? key}) : super(key: key);

  @override
  AmenityFilterWidgetState createState() => AmenityFilterWidgetState();
}

class AmenityFilterWidgetState extends State<AmenityFilterWidget> {
  // Track selected amenities using a Set
  final Set<Amenity> _selectedAmenities = {
    Amenity.airConditioning
  }; // Default selection

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: Amenity.values.map((amenity) {
        return CustomCheckboxListTile(
          title: getTextForAmenity(amenity),
          value: amenity,
          selectedOptions: _selectedAmenities,
          onChanged: (value, isSelected) {
            setState(() {
              isSelected
                  ? _selectedAmenities.add(value)
                  : _selectedAmenities.remove(value);
            });
          },
        );
      }).toList(),
    );
  }

  String getTextForAmenity(Amenity amenity) {
    switch (amenity) {
      case Amenity.airConditioning:
        return 'Air Conditioning';
      case Amenity.ceilingFan:
        return 'Ceiling Fan';
      case Amenity.dishwasher:
        return 'Dishwasher';
      case Amenity.fireplace:
        return 'Fireplace';
      case Amenity.microwave:
        return 'Microwave';
      case Amenity.patio:
        return 'Patio';
      case Amenity.porch:
        return 'Porch';
      case Amenity.refrigerator:
        return 'Refrigerator';
      default:
        return '';
    }
  }
}
