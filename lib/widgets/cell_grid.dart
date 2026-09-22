import 'package:flutter/material.dart';
import 'package:gstoresl1/models/Film.dart';

class CellGrid extends StatelessWidget {
  Film f;

  CellGrid(this.f);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/${f.img}", width: 100, height: 100),
            ),

            Text(f.title),
          ],
        ),
      ),
    );
  }
}
