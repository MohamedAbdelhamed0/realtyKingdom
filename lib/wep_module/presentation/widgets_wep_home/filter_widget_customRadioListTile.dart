import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum FilterOption { any, house, apartment, office }

class FilterWidget extends StatefulWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  FilterWidgetState createState() => FilterWidgetState();
}

class FilterWidgetState extends State<FilterWidget> {
  // This time, we'll track selected options using a Set
  final Set<FilterOption> _selectedOptions = {
    FilterOption.any
  }; // Default selection

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: FilterOption.values.map((option) {
        return CustomCheckboxListTile(
          title: getTextForOption(option),
          value: option,
          selectedOptions: _selectedOptions,
          onChanged: (value, isSelected) {
            setState(() {
              isSelected
                  ? _selectedOptions.add(value)
                  : _selectedOptions.remove(value);
            });
          },
        );
      }).toList(),
    );
  }

  String getTextForOption(FilterOption option) {
    switch (option) {
      case FilterOption.any:
        return 'Any';
      case FilterOption.house:
        return 'House';
      case FilterOption.apartment:
        return 'Apartment';
      case FilterOption.office:
        return 'Office';
      default:
        return '';
    }
  }
}

class CustomCheckboxListTile<T> extends StatelessWidget {
  final String title;
  final T value; // Generic type for value
  final Set<T> selectedOptions; // Generic type for selectedOptions
  final Function(T, bool) onChanged; // Generic Callback function

  const CustomCheckboxListTile({
    Key? key,
    required this.title,
    required this.value,
    required this.selectedOptions,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(title, style: TextStyle(fontSize: 6.sp)),
      ),
      value: selectedOptions.contains(value),
      activeColor: const Color(0xFF0C2950),
      onChanged: (bool? newValue) {
        if (newValue != null) {
          // Check for null to ensure type safety
          onChanged(value, newValue);
        }
      },
    );
  }
}
