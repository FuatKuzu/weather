import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget additionalInformation(int temp, String humidity, String pressure,
    String mainDescription, String name, int tempMin, int tempMax) {
  return Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.all(24.0),
    decoration: BoxDecoration(
      // color: Colors.amber,
      borderRadius: BorderRadius.circular(30),
    ),
    //width: MediaQuery.of().size.width * 0.8,
    height: 300,
    width: 300,

    padding: const EdgeInsets.all(10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(padding: EdgeInsets.only(top: 25)),
                          Row(
                            children: [
                              Text(
                                name,
                                style: GoogleFonts.robotoSlab(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Icon(
                                Icons.location_on_outlined,
                                size: 36,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 45.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '$temp',
                                          style: GoogleFonts.robotoSlab(
                                            color: Colors.white,
                                            fontSize: 100.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        /* Text(
                                            ' °C',
                                            style: GoogleFonts.robotoSlab(
                                              color: Colors.white,
                                              fontSize: 48.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),*/
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '$tempMin',
                                          style: GoogleFonts.robotoSlab(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          ' / ',
                                          style: GoogleFonts.robotoSlab(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '$tempMax',
                                              style: GoogleFonts.robotoSlab(
                                                color: Colors.white,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              ' °C',
                                              style: GoogleFonts.robotoSlab(
                                                color: Colors.white,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "NEM",
                                          style: GoogleFonts.robotoSlab(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          '  %$humidity',
                                          style: GoogleFonts.robotoSlab(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 150,
                                //  width: 80,
                                alignment: Alignment.topLeft,
                                child: Text(
                                  ' °C',
                                  style: GoogleFonts.robotoSlab(
                                    color: Colors.white,
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            mainDescription,
                            style: GoogleFonts.robotoSlab(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ]),
      ],
    ),
  );
}
