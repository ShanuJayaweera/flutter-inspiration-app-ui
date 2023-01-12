import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  final String imageUrl;

  PromoCard(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover
            )
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: [0.1, 0.9],
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1),]
            ),
          ),
        ),
      ),

    );
  }
}
