import 'package:flutter/material.dart';
import 'package:new_project/data/dummy_data.dart';
import 'package:new_project/models/thingy_item.dart';

class ThingyGrid extends StatelessWidget {
  const ThingyGrid({super.key});

  @override
  Widget build(BuildContext context) {
    const List dummyData = dummyThingy;

    return SizedBox(
      height: 240,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: dummyData.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, i) {
              return ThingyItem(dummyData[i]);
            }),
      ),
    );
  }
}
