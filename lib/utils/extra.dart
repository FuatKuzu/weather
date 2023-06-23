import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

Widget weatherInfosExxtra(
  int visibility,
  int wind,
  int pressure,
) {
  return SizedBox(
    width: 300,
    height: 350,
    child: Column(
      children: [
        const Padding(padding: EdgeInsets.only(top: 30)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              child: Column(
                children: [
                  Text(
                    "Görüş",
                    style: GoogleFonts.robotoSlab(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "Mesafesi",
                    style: GoogleFonts.robotoSlab(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    ' $visibility M',
                    style: GoogleFonts.robotoSlab(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              child: Column(
                children: [
                  Text(
                    'Rüzgar',
                    style: GoogleFonts.robotoSlab(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Hızı',
                    style: GoogleFonts.robotoSlab(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        ' $wind',
                        style: GoogleFonts.robotoSlab(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        ' M/S',
                        style: GoogleFonts.robotoSlab(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 50)),
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Başınç',
                    style: GoogleFonts.robotoSlab(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    ' $pressure bar',
                    style: GoogleFonts.robotoSlab(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Icon(
                FontAwesomeIcons.temperatureHalf,
                color: Colors.white,
                size: 40,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
