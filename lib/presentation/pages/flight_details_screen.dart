import 'package:flutter/material.dart';
import 'package:jmrapp/core/utils/const.dart';

import '../widgets/flight_card_widget.dart';

class FlightDetailsScreen extends StatelessWidget {
  const FlightDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        title: const Text("Ezy Travel"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0, bottom: 15, left: 10, right: 10),
                  child: Column(
                    children: [
                      const Text(
                        "BLR - Bengaluru to DXB - Dubai",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Departure: Sat, 23 Mar - Return: Sat, 23 Mar",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "(Round Trip)",
                            style: TextStyle(color: Colors.orange),
                          ),
                          Text(
                            "  Modify Search",
                            style: TextStyle(color: darkGreen),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Row(
                            children: [
                              Text(
                                "Sort",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.keyboard_arrow_down_rounded)
                            ],
                          ),
                          const Text(
                            "Non - Stop",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              const Text(
                                "Fliter",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 3),
                              Image.asset(
                                filterIcon,
                                color: blackColor,
                                height: 15,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: blackColor)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "Mar 22 - Mar 23",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            ),
                            Text(
                              "From AED 741",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: blackColor)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "Mar 23 - Mar 24",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            ),
                            Text(
                              "From AED 721",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: blackColor)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "Mar 24 - Mar 25",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            ),
                            Text(
                              "From AED 750",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    "851 Flight Found",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                children: [
                  FlightCard(
                    title1: 'Onward - Garuda Indonesia',
                    price1: 'AED 409',
                    departureTime1: '14:35',
                    departureLocation1: 'BLR - Bengaluru',
                    arrivalTime1: '21:55',
                    arrivalLocation1: 'DXB - Dubai',
                    duration1: '4h 30m',
                    stops1: '2 Stops',
                    title2: 'Return - Garuda Indonesia',
                    price2: 'AED 359',
                    departureTime2: '21:55',
                    departureLocation2: 'DXB - Dubai',
                    arrivalTime2: '14:35',
                    arrivalLocation2: 'BLR - Bengaluru',
                    duration2: '4h 30m',
                    stops2: '',
                  ),
                  SizedBox(height: 20),
                  FlightCard(
                    title1: 'Onward - Garuda Indonesia',
                    price1: 'AED 409',
                    departureTime1: '14:35',
                    departureLocation1: 'BLR - Bengaluru',
                    arrivalTime1: '21:55',
                    arrivalLocation1: 'DXB - Dubai',
                    duration1: '4h 30m',
                    stops1: '2 Stops',
                    title2: 'Return - Garuda Indonesia',
                    price2: 'AED 359',
                    departureTime2: '21:55',
                    departureLocation2: 'DXB - Dubai',
                    arrivalTime2: '14:35',
                    arrivalLocation2: 'BLR - Bengaluru',
                    duration2: '4h 30m',
                    stops2: '',
                  ),
                  SizedBox(height: 20),
                  FlightCard(
                    title1: 'Onward - Garuda Indonesia',
                    price1: 'AED 409',
                    departureTime1: '14:35',
                    departureLocation1: 'BLR - Bengaluru',
                    arrivalTime1: '21:55',
                    arrivalLocation1: 'DXB - Dubai',
                    duration1: '4h 30m',
                    stops1: '2 Stops',
                    title2: 'Return - Garuda Indonesia',
                    price2: 'AED 359',
                    departureTime2: '21:55',
                    departureLocation2: 'DXB - Dubai',
                    arrivalTime2: '14:35',
                    arrivalLocation2: 'BLR - Bengaluru',
                    duration2: '4h 30m',
                    stops2: '',
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
