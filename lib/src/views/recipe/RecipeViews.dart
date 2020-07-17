import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      hintText: "Search",
                      suffixIcon: FlatButton(
                        onPressed: () {},
                        child: Icon(Icons.filter_list),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                elevation: 4,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent recipe",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "See all (43)",
                      style: TextStyle(color: Color.fromRGBO(67, 69, 255, 1)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 280,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    RecipeCard(
                      "images/recipe/mexican.jpg",
                      "Mexican Tacos",
                      "Lactose-free recetta",
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    RecipeCard(
                      "images/recipe/bruschetta.jpg",
                      "Italian Bruschetta",
                      "Simple and light, just excellent.",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "See all (5)",
                      style: TextStyle(color: Color.fromRGBO(67, 69, 255, 1)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategorieCard(
                        "images/recipe/bowl-bozen-repas-japonnais.jpg",
                        "Japanese"),
                    SizedBox(
                      width: 16,
                    ),
                    CategorieCard("images/recipe/italien.jpg", "Italian"),
                    SizedBox(
                      width: 16,
                    ),
                    CategorieCard("images/recipe/chinois.webp", "Chinese"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
        elevation: 2.0,
        backgroundColor: Color.fromRGBO(67, 69, 255, 1),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10.0,
        child: Container(
          height: 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home),
              Icon(Icons.bookmark),
              Icon(null),
              Icon(Icons.notifications),
              Icon(Icons.person),
            ],
          ),
        ),
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final image;
  final name;
  final description;
  RecipeCard(this.image, this.name, this.description);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 280,
        child: Column(
          children: [
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Open",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      width: 40,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 16,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      height: 20,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      description,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      elevation: 2,
    );
  }
}

class CategorieCard extends StatelessWidget {
  final image;
  final categorie;
  CategorieCard(this.image, this.categorie);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 140,
        child: Center(
          child: Text(
            categorie,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(.8),
              BlendMode.overlay,
            ),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}
