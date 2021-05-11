import 'package:flutter/material.dart';

import './circular_button.dart';

class MyFloatingActionButton extends StatefulWidget {
  // final Function toggleShadow;

  @override
  _MyFloatingActionButtonState createState() => _MyFloatingActionButtonState();
}

class _MyFloatingActionButtonState extends State<MyFloatingActionButton>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation translateAnimation;
  Animation rotateAnimation;

  double getRadiansFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
    translateAnimation =
        Tween(begin: 0.0, end: 1.0).animate(animationController);
    rotateAnimation = Tween<double>(begin: 0.0, end: -135.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOut),
    );

    super.initState();
    animationController.addListener(() {
      setState(() {});
    });
  }

  var _isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 15,
      bottom: 85,
      child: Stack(
        children: [
          Transform.translate(
            offset: Offset.fromDirection(
                getRadiansFromDegree(270), translateAnimation.value * 280),
            child: CircularButton(
              color: Theme.of(context).primaryColor,
              width: 60,
              height: 60,
              icon: Icon(Icons.backpack),
              onClick: () {},
            ),
          ),
          Transform.translate(
            offset: Offset.fromDirection(
                getRadiansFromDegree(270), translateAnimation.value * 210),
            child: CircularButton(
              color: Theme.of(context).primaryColor,
              width: 60,
              height: 60,
              icon: Icon(Icons.add),
              onClick: () {},
            ),
          ),
          Transform.translate(
            offset: Offset.fromDirection(
                getRadiansFromDegree(270), translateAnimation.value * 140),
            child: CircularButton(
              color: Theme.of(context).primaryColor,
              width: 60,
              height: 60,
              icon: Icon(Icons.camera_alt),
              onClick: () {},
            ),
          ),
          Transform.translate(
            offset: Offset.fromDirection(
                getRadiansFromDegree(270), translateAnimation.value * 70),
            child: CircularButton(
              color: Theme.of(context).primaryColor,
              width: 60,
              height: 60,
              icon: Icon(Icons.person),
              onClick: () {},
            ),
          ),
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationZ(
              getRadiansFromDegree(rotateAnimation.value),
            ),
            child: CircularButton(
              color: Theme.of(context).primaryColor,
              width: 60,
              height: 60,
              icon: Icon(Icons.menu),
              onClick: () {
                _isOpened = !_isOpened;
                // widget.toggleShadow(_isOpened);
                if (animationController.isCompleted) {
                  animationController.reverse();
                } else {
                  animationController.forward();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
