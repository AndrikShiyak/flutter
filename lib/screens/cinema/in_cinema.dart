import 'package:flutter/material.dart';

import '../cinema/components/film_card.dart';
import '../../models/film_card_model.dart';

class InCinema extends StatefulWidget {
  InCinema({
    Key key,
  }) : super(key: key);

  @override
  _InCinemaState createState() => _InCinemaState();
}

class _InCinemaState extends State<InCinema>
    with SingleTickerProviderStateMixin {
  var _isOpened = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...filmCards.map(
                  (filmCard) {
                    return FilmCard(
                      filmCard,
                    );
                  },
                ).toList(),
                SizedBox(
                  height: MediaQuery.of(context).padding.bottom,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: _isOpened ? MediaQuery.of(context).size.height : 0,
          width: _isOpened ? double.infinity : 0,
          color: Colors.black.withOpacity(0.8),
        ),
      ],
    );
  }
}
