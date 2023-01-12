import 'package:flutter/material.dart';

class BextDesignBox extends StatelessWidget {
  const BextDesignBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              image: AssetImage("assets/images/three.jpg"),
              fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [
                0.4,
                0.9
              ],
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1),
              ]),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Best Design",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
