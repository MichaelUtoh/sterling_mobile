import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardImageCards extends StatelessWidget {
  final String imageUrl;
  final String cardText;

  const DashboardImageCards({
    Key? key,
    required this.cardText,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: [
          // 1
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              // color: Colors.deepPurple[200],
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            height: 300,
            width: 300,
          ),

          // 2
          Opacity(
            opacity: 0.5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.black,
              ),
              height: 300,
              width: 300,
            ),
          ),

          // 3
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 300,
            width: 300,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      cardText,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
