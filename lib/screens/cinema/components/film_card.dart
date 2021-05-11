import 'package:flutter/material.dart';

import '../../../models/film_card_model.dart';

class FilmCard extends StatelessWidget {
  final FilmCardModel filmCard;

  FilmCard(this.filmCard);

  Container buildSmallContainer(BuildContext context, String text) {
    return Container(
      alignment: Alignment.center,
      width: 40,
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        text,
        style: TextStyle(color: Theme.of(context).accentColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 230,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: NetworkImage(filmCard.image),
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0.35), Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildSmallContainer(context, filmCard.age),
                  SizedBox(
                    height: 5,
                  ),
                  buildSmallContainer(context, filmCard.type),
                  Spacer(),
                  Container(
                    child: Row(children: [
                      Icon(
                        Icons.star,
                        color: Theme.of(context).accentColor,
                      ),
                      Text(
                        filmCard.rating,
                        style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    filmCard.title,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: filmCard.sessions == null
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.start,
            children: [
              if (filmCard.sessions != null)
                ...filmCard.sessions
                    .map((session) => Container(
                          width: (size.width - 40) / 4,
                          alignment: Alignment.center,
                          child: Text(
                            session,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ))
                    .toList()
              else
                Text(
                  'НАЙБЛИЖЧІ СЕАНСИ',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                ),
              if (filmCard.date != null && filmCard.sessions == null)
                Text(
                  filmCard.date,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontWeight: FontWeight.bold),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
