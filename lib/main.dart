import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recharge/homeprovider.dart';
import 'package:recharge/homescreen.dart';
import 'package:recharge/webviewscreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => homeprovider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => Home_Screen(),
          'web':(context) => webviewscreen(),
        },
      ),
    ),
  );
}
