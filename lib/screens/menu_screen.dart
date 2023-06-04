import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:led_assignment/provider/lights.dart';
import 'package:led_assignment/utils/category.dart';
import 'package:led_assignment/utils/colors.dart';
import 'package:provider/provider.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // List<String> _categories = [];
    final _provider = Provider.of<LightProvider>(context).lights;
    List<Icon> icons = const [
      Icon(
        Icons.light,
        color: lightBrown,
        size: 40,
      ),
      Icon(
        Icons.light_mode_outlined,
        color: lightBrown,
        size: 40,
      ),
      Icon(
        Icons.account_balance_outlined,
        color: lightBrown,
        size: 40,
      ),
      Icon(
        Icons.yard_outlined,
        color: lightBrown,
        size: 40,
      ),
      Icon(
        Icons.light,
        color: lightBrown,
        size: 40,
      ),
    ];
    return Scaffold(
        backgroundColor: lightBrown,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        SimpleHiddenDrawerController.of(context).toggle();
                      },
                      icon: Icon(
                        Icons.menu,
                        size: 40,
                        color: blueShade,
                      ),
                    ),
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(
                    //     Icons.search,
                    //     color: blueShade,
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Jeet',
                          style: TextStyle(
                            color: blueShade,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                            .animate()
                            .slideY(
                                begin: -5,
                                end: 0,
                                duration: const Duration(milliseconds: 500))
                            .fadeIn(),
                        Text(
                          'How can we help you today?',
                          style: TextStyle(color: darkBrown, fontSize: 18),
                        )
                            .animate()
                            .slideY(
                                begin: 5,
                                end: 0,
                                duration: const Duration(milliseconds: 500))
                            .fadeIn(),
                      ],
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://media.licdn.com/dms/image/D4D03AQEIm8t4oqc_-g/profile-displayphoto-shrink_400_400/0/1662981910613?e=1691020800&v=beta&t=1xpU2N5zQxAnrqZOHe8EIZxU9Sf7JjgdjaRk1n4A4TY'),
                    ).animate().fadeIn(
                        curve: Curves.elasticIn,
                        duration: Duration(
                          milliseconds: 500,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 280,
                      decoration: BoxDecoration(
                        color: lightBrown,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: darkBrown, blurRadius: 10, spreadRadius: 2)
                        ],
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: blueShade,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 5,
                                      spreadRadius: 5,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'search',
                              style: TextStyle(color: darkBrown, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: blueShade,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: darkBrown, blurRadius: 10, spreadRadius: 2)
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Category',
                  style: TextStyle(
                    color: blueShade,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                            });
                            print(currentIndex);
                          },
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              color:
                                  index == currentIndex ? blueShade : darkBrown,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 8,
                                    spreadRadius: 3,
                                    offset: Offset(0, 3)),
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: icons[index],
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    cats[index].name,
                                    style: TextStyle(
                                      color: index == currentIndex
                                          ? darkBrown
                                          : blueShade,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                              .animate()
                              .fadeIn(
                                duration: Duration(
                                  milliseconds: 300 + 200 * index,
                                ),
                              )
                              .slideY(
                                duration: Duration(
                                  milliseconds: 300 + 200 * index,
                                ),
                              ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Top Trending🔥',
                  style: TextStyle(
                    color: blueShade,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              '/detail-screen',
                              arguments: _provider[index].name,
                            );
                          },
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: darkBrown,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          _provider[index].imageUrl,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          _provider[index].name,
                                          style: GoogleFonts.oswald(
                                            color: blueShade,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'IP RATING\t',
                                              style: TextStyle(
                                                color: blueShade,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              _provider[index].ipRating,
                                              style: TextStyle(
                                                color: lightBrown,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'COLOR TEMP\t',
                                              style: TextStyle(
                                                color: blueShade,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              _provider[index].colorTemp,
                                              style: TextStyle(
                                                color: lightBrown,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'BODY COLOR\t',
                                              style: TextStyle(
                                                color: blueShade,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              _provider[index].bodyColor,
                                              style: TextStyle(
                                                color: lightBrown,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "₹${_provider[index].price}",
                                              style: const TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "₹${_provider[index].discountAmt}",
                                              style: const TextStyle(
                                                // decoration:
                                                // TextDecoration.lineThrough,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green,
                                              ),
                                            )
                                                .animate(
                                                  onPlay: (controller) =>
                                                      controller.repeat(
                                                    reverse: true,
                                                  ),
                                                )
                                                .shake(
                                                  hz: 3,
                                                  duration: Duration(
                                                    milliseconds: 300,
                                                  ),
                                                )
                                                .then(
                                                    delay: Duration(
                                                        milliseconds: 2000))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                              .animate()
                              .fadeIn(
                                duration: Duration(milliseconds: 200),
                              )
                              .slideX(
                                duration: Duration(milliseconds: 1000),
                                begin: index % 2 == 0 ? -5 : 5,
                                end: 0,
                              ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
