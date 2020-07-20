import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_challenge/src/views/Delivery/Deliver.dart';
import 'package:ui_challenge/src/views/Delivery/PlateInfo.dart';
import 'package:ui_challenge/src/views/doctor/DoctorViews.dart';
import 'package:ui_challenge/src/views/doctor/Profile.dart';
import 'package:ui_challenge/src/views/gallery/GalleryViews.dart';
import 'package:ui_challenge/src/views/music_player/PlayList.dart';
import 'package:ui_challenge/src/views/music_player/Single.dart';
import 'package:ui_challenge/src/views/recipe/RecipeViews.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter UI challenge',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => GalleryViews(),
          '/recipe': (BuildContext context) => Recipe(),
          '/doctor': (BuildContext context) => DoctorViews(),
          '/doctor/profile': (BuildContext context) => Profile(),
          '/music': (BuildContext context) => PlayList(),
          '/music/play': (BuildContext context) => Single(),
          '/delivery': (BuildContext context) => Deliver(),
          '/delivery/info': (BuildContext context) => PlateInfo(),
        });
  }
}
