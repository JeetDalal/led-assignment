import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:led_assignment/provider/lights.dart';
import 'package:led_assignment/utils/colors.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments;
    final details = Provider.of<LightProvider>(context)
        .lights
        .firstWhere((element) => element.name == id);
    return Scaffold(
      backgroundColor: lightBrown,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200)),
              image: DecorationImage(
                image: NetworkImage(
                  details.imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 30,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )
              .animate()
              .fadeIn(
                delay: Duration(milliseconds: 500),
                curve: Curves.easeInCirc,
                duration: Duration(
                  milliseconds: 200,
                ),
              )
              .slideY(
                begin: -0.5,
                end: 0,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeOut,
              ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              details.name,
              style: GoogleFonts.oswald(
                color: blueShade,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ).animate().fadeIn(
                  delay: Duration(milliseconds: 500),
                  curve: Curves.easeInCirc,
                  duration: Duration(
                    milliseconds: 200,
                  ),
                ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              'Description',
              style: TextStyle(
                color: blueShade,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ).animate().fadeIn(
                  delay: Duration(milliseconds: 500),
                  curve: Curves.easeInCirc,
                  duration: Duration(
                    milliseconds: 200,
                  ),
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              details.description,
              style: TextStyle(
                color: darkBrown,
                fontSize: 13,
                // fontWeight: FontWeight.bold,
              ),
            ).animate().fadeIn(
                  delay: Duration(milliseconds: 500),
                  curve: Curves.easeInCirc,
                  duration: Duration(
                    milliseconds: 200,
                  ),
                ),
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: Center(
                  child: SizedBox(
                    height: 50,
                    child: Text(
                      "₹${details.discountAmt}",
                      style: GoogleFonts.oswald(
                        color: blueShade,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: blueShade,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "BUY NOW",
                      style: GoogleFonts.oswald(
                        color: lightBrown,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
