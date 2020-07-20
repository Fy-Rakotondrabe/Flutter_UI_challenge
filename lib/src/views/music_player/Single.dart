import 'package:flutter/material.dart';

class Single extends StatelessWidget {
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
                height: MediaQuery.of(context).size.height * 0.65,
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
                                "Crimson Day",
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
                                "Hail To The King",
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
              //Duration indicator
              Center(
                child: Text(
                  "5:02",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Controller
              Container(
                height: MediaQuery.of(context).size.height * .16,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.shuffle),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32),
                            bottomRight: Radius.circular(32),
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.fast_rewind),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, right: 16),
                                child: Container(
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(100),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 48,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Icon(Icons.fast_forward),
                            ],
                          ),
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
