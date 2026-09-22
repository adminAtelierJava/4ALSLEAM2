import 'package:flutter/material.dart';
import 'package:gstoresl1/models/Film.dart';
import 'package:gstoresl1/widgets/cell_grid.dart';

class StoreFilm extends StatelessWidget {
  const StoreFilm({super.key});

  @override
  Widget build(BuildContext context) {
    var films = [
      Film(
        'Fifa ',
        200,
        'fifa.jpg',
        "",
        //"FIFA 22 est un jeu vidéo de simulation de football publié par Electronics Arts. Il s'agit du 29ᵉ volet de cette série FIFA. Il est sorti sur Microsoft Windows, Nintendo Switch, Play Station 4, PlayStation 5 et Google Stadia le 1ᵉʳ octobre",
      ),
      Film(
        'DMC5 ',
        200,
        'dmc5.jpg',
        "",
        //  "Devil May Cry 5 est un jeu d’action de type hack’n slash joueur incarne l'un des trois personnages jouables selon le niveau, tous ayant des niveaux prédéfinis, bien que le choix du personnage joué soit donné au joueur lors de deux niveaux durant le jeu, chaque personnage ayant un style de jeu lui étant propre : le personnage principal Nero,",
      ),
      Film(
        'NFS ',
        200,
        'nfs.jpg',
        "",
        // "Dans Need for Speed Heat, les limites de la légalité deviennent floues dès que le soleil amorce sa descente. Le jour, participez au Speedhunter Showdown, une série d’épreuves officielles qui vous permettra de gagner de quoi personnaliser votre flotte de voitures.",
      ),
      Film(
        're8 ',
        200,
        're8.jpg',
        "",
        //  "Resident Evil Village, stylisé Resident Evil VII.I.age et connu au Japon sous le nom Biohazard Village",
      ),
      Film(
        'Fifa ',
        200,
        'fifa.jpg',
        "",
        // "FIFA 22 est un jeu vidéo de simulation de football publié par Electronics Arts. Il s'agit du 29ᵉ volet de cette série FIFA. Il est sorti sur Microsoft Windows, Nintendo Switch, Play Station 4, PlayStation 5 et Google Stadia le 1ᵉʳ octobre",
      ),
      Film(
        'DMC5 ',
        200,
        'dmc5.jpg',
        "",
        // carne l'un des trois personnages jouables selon le niveau, tous ayant des niveaux prédéfinis, bien que le choix du personnage joué soit donné au joueur lors de deux niveaux durant le jeu, chaque personnage ayant un style de jeu lui étant propre : le personnage principal Nero,",
      ),
      Film('NFS ', 200, 'nfs.jpg', ""),
      Film('re8 ', 200, 're8.jpg', ""),
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Film store"), backgroundColor: Colors.purple),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 12,
          mainAxisExtent: 155,
          crossAxisSpacing: 12,
        ),
        itemCount: films.length,
        itemBuilder: (context, index) {
          return CellGrid(films[index]);
        },
      ),
    );
  }
}
