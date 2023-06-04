import 'package:flutter/material.dart';
import 'package:led_assignment/provider/lights.dart';
import 'package:led_assignment/utils/colors.dart';
import 'package:led_assignment/utils/drawer.dart';
import 'package:provider/provider.dart';

import 'screens/detail_screen.dart';
import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LightProvider(),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: blueShade,
          ),
          home: const HidderDrawer(),
          routes: {
            '/detail-screen': (context) => const DetailsScreen(),
          }),
    );
  }
}
