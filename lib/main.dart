import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String uri =
      'https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/chorizo-mozarella-gnocchi-bake-cropped.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Fine Quality',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: ListView(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10.0),
                  height: 250.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Stack(children: <Widget>[
                            Container(
                              height: 230.0,
                              width: MediaQuery.of(context).size.width -
                                  MediaQuery.of(context).size.width / 3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: NetworkImage(uri),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                                left: 15.0,
                                top: 130.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Pasta',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '\$80',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                )),
                          ])
                        ],
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Material(
                            borderRadius: BorderRadius.circular(7.0),
                            elevation: 2.0,
                            child: Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    '368',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(7.0),
                            elevation: 2.0,
                            child: Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.chat_bubble,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    '78',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(7.0),
                            elevation: 2.0,
                            child: Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.reply,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    '368',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 17.0),
                child: Text(
                  'Commodity',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                childAspectRatio: 0.85,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                children: <Widget>[
                  _buildFoodCatalog("Frankie", "Italy", 'a', 64, 22, 1),
                  _buildFoodCatalog("Frankie", "Italy", 'a', 64, 22, 2),
                  _buildFoodCatalog("Frankie", "Italy", 'a', 64, 22, 3),
                  _buildFoodCatalog("Frankie", "Italy", 'a', 64, 22, 4),
                  _buildFoodCatalog("Frankie", "Italy", 'a', 64, 22, 5),
                  _buildFoodCatalog("Frankie", "Italy", 'a', 64, 22, 6),
                  _buildFoodCatalog("Frankie", "Italy", 'a', 64, 22, 7),
                  _buildFoodCatalog("Frankie", "Italy", 'a', 64, 22, 8),
                ],
              )
            ],
          ),
        ]));
  }

  Widget _buildFoodCatalog(
    String name,
    origin,
    cardImage,
    int likes,
    commentCount,
    cardIndex,
  ) {
    return Padding(
      padding: cardIndex.isEven
          ? EdgeInsets.only(right: 15.0)
          : EdgeInsets.only(left: 15.0),
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
              color: Colors.grey.withOpacity(0.2),
              style: BorderStyle.solid,
              width: 1.0),
        ),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRDx8p7FmKFTGlT5KVenFYKQ80xRMPN9k8pRmlEBZ_7tNMlKyIg&usqp=CAU'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(blurRadius: 0.5, color: Colors.grey)
                      ]),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.0,
                    top: 5.0,
                  ),
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.0,
                    top: 5.0,
                  ),
                  child: Text(
                    origin,
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.0,
                    top: 5.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        likes.toString(),
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        commentCount.toString(),
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: 110.0,
              top: 102.0,
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.amber,
                ),
                child: Center(
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
