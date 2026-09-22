
import 'package:flutter/material.dart';
import 'package:gstoresl1/models/Film.dart';

class Details extends StatelessWidget {
  Film film;

  Details(this.film);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(film.title),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset("assets/${film.img}"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(film.description),
            ),
            Text(
              "${film.price} TND",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),

          ],
        ),
      ),
    );
  }
}
