import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height:10.0),
                  Text('Find Your', style: TextStyle(fontSize: 30.0),),
                  SizedBox(height:8.0),
                  Text('Inspiration', style: TextStyle(fontSize: 50.0),),
                  SizedBox(height:15.0),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.black38,),
                        hintText: "Search you're looking for",
                        hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                ],
              ),
            ),

            SizedBox(height: 10.0,),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Promo Today", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                  SizedBox(height: 10.0,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        promoCard("assets/images/one.jpg"),
                        promoCard("assets/images/four.jpg"),
                        promoCard("assets/images/one.jpg"),
                        promoCard("assets/images/three.jpg"),

                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),

                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage("assets/images/three.jpg"),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            stops: [0.4, 0.9],
                            colors: [
                              Colors.black.withOpacity(.8),
                              Colors.black.withOpacity(.1),]
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text("Best Design", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget promoCard(image){
  return AspectRatio(
    aspectRatio: 2.83 / 3,

    child: Container(
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: AssetImage(image),
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

