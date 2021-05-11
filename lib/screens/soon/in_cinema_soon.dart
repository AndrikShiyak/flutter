import 'package:flutter/material.dart';

class InCinemaSoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'з 11 травня',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    'вівторок',
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://multiplex.ua/images/05/f1/05f155823ff9ce56e1c55f646d2541a9.jpeg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
