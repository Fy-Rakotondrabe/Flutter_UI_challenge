import 'package:flutter/material.dart';

class GalleryViews extends StatelessWidget {
  final List ui = [
    {
      "title": "Recipe",
      "image": "images/gallery/recipe.jpg",
      "route": "/recipe"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.brightness_2,
              size: 28,
              color: Colors.black87,
            ),
            onPressed: null,
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .15,
              child: Center(
                child: Text(
                  "UI Gallery",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              height: MediaQuery.of(context).size.height * .70,
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(ui.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, ui[index]["route"]);
                    },
                    child: Container(
                      child: Card(
                        elevation: 4.0,
                        child: Container(
                          height: 140,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ui[index]["image"],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
