import 'package:flutter/material.dart';

class PriceRangeSelector extends StatefulWidget {
  const PriceRangeSelector({Key? key}) : super(key: key);

  @override
  _PriceRangeSelectorState createState() => _PriceRangeSelectorState();
}

class _PriceRangeSelectorState extends State<PriceRangeSelector> {
  final TextEditingController _fromPriceController = TextEditingController();
  final TextEditingController _toPriceController = TextEditingController();
  final List<int> _prices = List.generate(11, (index) => index * 100);

  @override
  void initState() {
    super.initState();
    _fromPriceController.text = _prices.first.toString();
    _toPriceController.text = _prices.last.toString();
  }

  @override
  void dispose() {
    _fromPriceController.dispose();
    _toPriceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.grey,
              style: BorderStyle.solid,
            ),
          ),
          child: Row(
            children: [
              const Text("From"),
              const SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  controller: _fromPriceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter or select price',
                    suffixIcon: DropdownButton<int>(
                      underline: const SizedBox(),
                      onChanged: (int? newValue) {
                        _fromPriceController.text = newValue.toString();
                      },
                      items: _prices.map<DropdownMenuItem<int>>((int value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Text("$value"),
                        );
                      }).toList(),
                      icon: const Icon(Icons.arrow_drop_down),
                      isDense:
                          true, // Add this line to make the dropdown more compact
                      isExpanded:
                          false, // Ensure dropdown does not force expansion
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10), // Add spacing between the containers
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.grey,
              style: BorderStyle.solid,
            ),
          ),
          child: Row(
            children: [
              const Text("To"),
              const SizedBox(width: 14),
              Expanded(
                child: TextFormField(
                  controller: _toPriceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter or select price',
                    suffixIcon: DropdownButton<int>(
                      underline: const SizedBox(),
                      onChanged: (int? newValue) {
                        _toPriceController.text = newValue.toString();
                      },
                      items: _prices.map<DropdownMenuItem<int>>((int value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Text("$value"),
                        );
                      }).toList(),
                      icon: const Icon(Icons.arrow_drop_down),
                      isDense:
                          true, // Add this line to make the dropdown more compact
                      isExpanded:
                          false, // Ensure dropdown does not force expansion
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
