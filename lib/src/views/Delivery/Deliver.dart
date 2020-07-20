import 'package:flutter/material.dart';

class Deliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      body: Column(
        children: [
          Header(),
          Container(
            height: MediaQuery.of(context).size.height * .65,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Dashboard(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .015,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Personal Offer",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "See all",
                              style: TextStyle(
                                color: Color.fromRGBO(245, 166, 35, 1),
                                fontSize: 16,
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Color.fromRGBO(245, 166, 35, 1),
                              size: 24,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  PersonalOffer(),
                ],
              ),
            ),
          ),
          BottomTabs()
        ],
      ),
    );
  }
}

class BottomTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(63, 81, 181, 1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 32,
                width: 80,
                padding: EdgeInsets.only(left: 8, right: 8),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 166, 35, 1),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.store,
                      color: Colors.white,
                    ),
                    Text(
                      "Store",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PersonalOffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.only(left: 40, right: 40, top: 24, bottom: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "images/delivery/logo.png",
            height: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Discount up out",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(.5),
                ),
              ),
              Text(
                "20 %",
                style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "4 Days Remaining",
                style: TextStyle(
                  color: Color.fromRGBO(245, 166, 35, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      height: MediaQuery.of(context).size.height * .47,
      width: MediaQuery.of(context).size.width * .94,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                color: Color.fromRGBO(63, 81, 181, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                elevation: 8,
                child: Container(
                  height: MediaQuery.of(context).size.height * .22,
                  width: MediaQuery.of(context).size.width * .4,
                  padding: EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Update\nat 17.17",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * .06,
                            width: MediaQuery.of(context).size.width * .1,
                            child: Icon(
                              Icons.local_shipping,
                              size: 32,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              CardInfo(Icons.assignment, "Recent", "56", "items"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardInfo(Icons.room_service, "Digne in", "10", "Books"),
              CardInfo(
                Icons.fastfood,
                "Explore",
                "4",
                "new!",
                isNotif: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardInfo extends StatelessWidget {
  final icon;
  final title;
  final count;
  final countTitle;
  final bool isNotif;
  CardInfo(this.icon, this.title, this.count, this.countTitle,
      {this.isNotif = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      elevation: 0.0,
      child: Container(
        height: MediaQuery.of(context).size.height * .22,
        width: MediaQuery.of(context).size.width * .4,
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  size: 32,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .006,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.6),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: isNotif ? Color.fromRGBO(254, 237, 211, 1) : null,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              width: MediaQuery.of(context).size.width * .2,
              child: Row(
                mainAxisAlignment: isNotif
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.start,
                children: [
                  Text(
                    count,
                    style: TextStyle(
                      fontSize: isNotif ? 16 : 24,
                      fontWeight: FontWeight.bold,
                      color: isNotif
                          ? Color.fromRGBO(245, 166, 35, 1)
                          : Colors.black.withOpacity(.6),
                    ),
                  ),
                  Text(
                    " $countTitle",
                    style: TextStyle(
                      color: isNotif
                          ? Color.fromRGBO(245, 166, 35, 1)
                          : Colors.black.withOpacity(.6),
                      fontSize: 16,
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

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * .24,
      padding: EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/delivery/profile.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                child: Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                  size: 32,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(63, 81, 181, 1),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Hi,",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " Jacks!",
                    style: TextStyle(
                      color: Color.fromRGBO(245, 166, 35, 1),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Text(
                "get ready to breakfast!",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
