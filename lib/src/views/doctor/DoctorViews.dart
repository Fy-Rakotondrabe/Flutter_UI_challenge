import 'package:flutter/material.dart';

class DoctorViews extends StatelessWidget {
  final List categories = [
    {"name": "Adults", "active": true},
    {"name": "Children", "active": false},
    {"name": "Mens", "active": false},
    {"name": "Womens", "active": false}
  ];
  final List doctorCategories = [
    {
      "name": "Cough & Cold",
      "number": "10",
      "image": "images/doctors/cough.jpg"
    },
    {
      "name": "Heart Specialist",
      "number": "17",
      "image": "images/doctors/heart.jpg"
    },
    {
      "name": "Diabet Specialist",
      "number": "8",
      "image": "images/doctors/diabete.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Container(
                margin: EdgeInsets.only(top: 50),
                height: 80,
                width: 200,
                child: Text(
                  "Find Your Consultation",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Search
              Search(),
              //Categories
              SizedBox(
                height: 24,
              ),
              Categories(
                categories: categories,
                doctorCategories: doctorCategories,
              ),
              //Doctors
              SizedBox(
                height: 16,
              ),
              Doctors(),
            ],
          ),
        ),
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: Color.fromRGBO(239, 239, 239, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Container(
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            hintText: "Search",
          ),
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key key,
    @required this.categories,
    @required this.doctorCategories,
  }) : super(key: key);

  final List categories;
  final List doctorCategories;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          DefaultTabController(
            length: 4,
            initialIndex: 0,
            child: Column(
              children: [
                TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(
                    color: Color.fromRGBO(255, 208, 170, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  labelColor: Color.fromRGBO(251, 158, 73, 1),
                  unselectedLabelColor: Colors.black54,
                  tabs: List.generate(categories.length, (index) {
                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          categories[index]["name"],
                        ),
                      ),
                    );
                  }),
                ),
                Container(
                  height: 240,
                  child: TabBarView(
                    children: [
                      AdultsCategorie(doctorCategories: doctorCategories),
                      Text("Children categorie"),
                      Text("Mens categorie"),
                      Text("Womens categorie"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

class AdultsCategorie extends StatelessWidget {
  const AdultsCategorie({
    Key key,
    @required this.doctorCategories,
  }) : super(key: key);

  final List doctorCategories;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(doctorCategories.length, (index) {
          return Container(
            padding: EdgeInsets.all(16.0),
            width: 150,
            margin: EdgeInsets.only(right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorCategories[index]["name"],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "${doctorCategories[index]["number"]} doctors",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
              image: DecorationImage(
                image: AssetImage(
                  doctorCategories[index]["image"],
                ),
                fit: BoxFit.cover,
              ),
            ),
          );
        }),
      ),
    );
  }
}

class Doctors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Doctors",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 238, 224, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/doctor/profile");
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/doctors/doctor.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/doctor/profile");
                    },
                    child: Container(
                      height: 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. Stefani Albert",
                            style: TextStyle(
                              color: Color.fromRGBO(251, 158, 73, 1),
                              fontSize: 20,
                            ),
                          ),
                          Text("Heart Specialist"),
                        ],
                      ),
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      "Call",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                    color: Color.fromRGBO(251, 158, 73, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
