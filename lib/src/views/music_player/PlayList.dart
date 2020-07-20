import 'package:flutter/material.dart';

class PlayList extends StatelessWidget {
  final List songs = [
    {"name": "Shepherd of Fire", "duration": "5:25"},
    {"name": "Hail to the King", "duration": "5:06"},
    {"name": "Doing Time", "duration": "3:27"},
    {"name": "This Means War", "duration": "6:09"},
    {"name": "Requiem", "duration": "4:23"},
    {"name": "Crimson Day", "duration": "5:02"},
    {"name": "Heretic", "duration": "5:00"},
    {"name": "Coming Home", "duration": "6:26"},
    {"name": "Planets", "duration": "6:01"},
    {"name": "Acid Rain", "duration": "6:40"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Header
              Container(
                height: MediaQuery.of(context).size.height * 0.50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 16),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 24,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Hail To The King",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Avenged Sevenfold",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(150),
                          bottomRight: Radius.circular(150),
                        ),
                        image: DecorationImage(
                          image: AssetImage("images/music/hail.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 8.0,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      child: Icon(
                        Icons.filter_list,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
              //Playlist
              Container(
                height: MediaQuery.of(context).size.height * .30,
                padding: EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 16,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: songs.map((song) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/music/play");
                        },
                        child: Container(
                          padding: EdgeInsets.only(bottom: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                song["name"],
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                song["duration"],
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Center(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 32,
                  color: Colors.grey,
                ),
              ),
              //Music Controller
              Container(
                height: MediaQuery.of(context).size.height * .12,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.shuffle),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.fast_rewind),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                                child: Icon(
                                  Icons.pause,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Icon(Icons.fast_forward),
                          ],
                        ),
                      ),
                      Icon(Icons.repeat),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
