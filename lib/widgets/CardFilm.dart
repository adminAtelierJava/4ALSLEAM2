import 'package:flutter/material.dart';
import 'package:gstoresl1/Screens/details.dart';
import 'package:gstoresl1/models/Film.dart';

class Cardfilm extends StatelessWidget {
  final Film film;

  const Cardfilm({super.key, required this.film});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Details(film),)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/${film.img}',
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.18,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    film.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    '  ${film.price} TND',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
