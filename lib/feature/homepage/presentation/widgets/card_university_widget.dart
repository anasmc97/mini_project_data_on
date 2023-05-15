import 'package:flutter/material.dart';

class CardUniversityWidget extends StatelessWidget {
  int index;
  String name;
  String country;
  String? stateProvince;
  CardUniversityWidget(
      {Key? key,
      required this.index,
      required this.name,
      required this.country,
      this.stateProvince})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: (index % 2 == 1) ? Colors.grey : Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name ?? '-',
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              (stateProvince != null) ? '$stateProvince - $country' : country,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
