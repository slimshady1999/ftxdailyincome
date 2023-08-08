import 'package:flutter/material.dart';
import 'package:ftxincome/pages/intropage.dart';
import "package:shared_preferences/shared_preferences.dart";
import 'pages/fxtdashboard.dart';

int? isViewed;

// Future<void>
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  isViewed = preferences.getInt("introPage");

  runApp(MaterialApp(
    home: isViewed != 0 ? const IntroPage() : const FtxDashboard(),
    debugShowCheckedModeBanner: false,
  ));
}
