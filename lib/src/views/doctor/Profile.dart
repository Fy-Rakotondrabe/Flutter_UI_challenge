import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Profile
              Info(),
              SizedBox(
                height: 24,
              ),
              //About
              About(),
              SizedBox(
                height: 24,
              ),
              //Location
              Localisation(),
              SizedBox(
                height: 16,
              ),
              //Action
              Activity(),
            ],
          ),
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .28,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              image: DecorationImage(
                image: AssetImage("images/doctors/doctor.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width * .5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Stefeni Albert",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Heart Specialist",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .10,
                  width: MediaQuery.of(context).size.width * .6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Icon(
                          Icons.mail,
                          size: 24,
                          color: Color.fromRGBO(251, 185, 124, 1),
                        ),
                        width: MediaQuery.of(context).size.width * .15,
                        height: MediaQuery.of(context).size.height * .08,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(254, 232, 215, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.phone,
                          size: 24,
                          color: Color.fromRGBO(251, 115, 125, 1),
                        ),
                        width: MediaQuery.of(context).size.width * .15,
                        height: MediaQuery.of(context).size.height * .08,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(254, 241, 239, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.videocam,
                          size: 24,
                          color: Color.fromRGBO(167, 170, 187, 1),
                        ),
                        width: MediaQuery.of(context).size.width * .15,
                        height: MediaQuery.of(context).size.height * .08,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(235, 236, 239, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Dr. Stefani Albert is a cardiologist in Nashville & affilated with multiple hospitals in the area. She received her medical degree from Duke UNiversity School of Medecine and has been in practice for mora tha 20 years.",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class Localisation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .28,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    child: Icon(Icons.location_on, color: Colors.grey),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Adress",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "House #2, Road #5, \nGreen road \nDhanmondi, Daka",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    child: Icon(Icons.access_time, color: Colors.grey),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Daily Practict",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Monday - Friday \nOpen till 7 PM",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * .30,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              image: DecorationImage(
                image: AssetImage("images/doctors/map.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Activity",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .435,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.library_books,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.45),
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                      ),
                      Text(
                        "List Of \nSchedule",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(251, 185, 124, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .45,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.library_books,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.4),
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                      ),
                      Text(
                        "Doctor's \nDaily Post",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(165, 165, 165, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
