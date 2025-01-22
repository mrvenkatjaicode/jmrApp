import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jmrapp/presentation/bloc/flight_search/flight_search_bloc.dart';
import 'package:jmrapp/presentation/pages/flight_details_screen.dart';

import '../../core/utils/const.dart';
import '../bloc/flight_search/flight_search_event.dart';
import '../bloc/flight_search/flight_search_state.dart';

class FlightSearchScreen extends StatelessWidget {
  const FlightSearchScreen({super.key});

  static List<String> tabNames = ["Round Trip", "One Way", "Multi-city"];
  static int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => FlightSearchBloc(),
      child: BlocConsumer<FlightSearchBloc, FlightSearchState>(
        listener: (context, state) {
          if (state is SelectedIndexState) {
            selectedIndex = state.selectedIndex;
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: appColor,
              centerTitle: true,
              title: const Text("Search Flights"),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 190,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              searchFlightsbanner,
                              width: double.infinity,
                              height: 148,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 13,
                          left: 0,
                          right: 0,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              'Let’s start your trip',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 46,
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Row(
                              children: List.generate(tabNames.length, (index) {
                                return Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      context.read<FlightSearchBloc>().add(
                                          SelectIndexEvent(
                                              selectedIndex: index));
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.easeInOut,
                                      decoration: BoxDecoration(
                                        color: selectedIndex == index
                                            ? Colors.green
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Center(
                                        child: Text(
                                          tabNames[index],
                                          style: TextStyle(
                                            color: selectedIndex == index
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                height: 50,
                                width: 55,
                                child: Center(
                                  child: Image.asset(
                                    flightIcon,
                                  ),
                                )),
                            const SizedBox(
                                height: 50,
                                child: Center(
                                  child: Text(
                                    "From",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )),
                          ],
                        ),
                        ListTile(
                          leading: const SizedBox(),
                          title: Container(
                            height: 3,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  darkGreen,
                                  whiteColor,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                          ),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            child: Image.asset(
                              updownIcon,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                                height: 50,
                                width: 55,
                                child: Center(
                                  child: Image.asset(
                                    loctionIcon,
                                  ),
                                )),
                            const SizedBox(
                                height: 50,
                                child: Center(
                                  child: Text(
                                    "To",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: blackColor,
                                  ),
                                ),
                                child: const Center(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Sat, 23 Mar - 2024",
                                      style: TextStyle(),
                                    ),
                                    Icon(Icons.calendar_month_sharp)
                                  ],
                                )),
                              ),
                              Positioned(
                                top: -13,
                                left: 25,
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          right: 5.0,
                                          left: 5.0,
                                          top: 3,
                                          bottom: 3),
                                      child: Text(
                                        "Depature",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: blackColor,
                                  ),
                                ),
                                child: const Center(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Sat, 23 Mar - 2024",
                                      style: TextStyle(),
                                    ),
                                    Icon(Icons.calendar_month_sharp)
                                  ],
                                )),
                              ),
                              Positioned(
                                top: -13,
                                left: 25,
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          right: 5.0,
                                          left: 5.0,
                                          top: 3,
                                          bottom: 3),
                                      child: Text(
                                        "Return",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: blackColor,
                                  ),
                                ),
                                child: const Center(
                                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 10),
                                    Text(
                                      "1 Passenger",
                                      style: TextStyle(),
                                    ),
                                  ],
                                )),
                              ),
                              Positioned(
                                top: -13,
                                left: 25,
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          right: 5.0,
                                          left: 5.0,
                                          top: 3,
                                          bottom: 3),
                                      child: Text(
                                        "Travelers",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: blackColor,
                                  ),
                                ),
                                child: const Center(
                                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 10),
                                    Text(
                                      "Economy Class",
                                      style: TextStyle(),
                                    ),
                                  ],
                                )),
                              ),
                              Positioned(
                                top: -13,
                                left: 25,
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          right: 5.0,
                                          left: 5.0,
                                          top: 3,
                                          bottom: 3),
                                      child: Text(
                                        "Cabin Class",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const FlightDetailsScreen();
                        },
                      ));
                    },
                    child: Container(
                      height: 46,
                      width: width / 2.2,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: darkGreen,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Center(
                          child: Text(
                        "Search Flights",
                        style: TextStyle(
                            color: whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Travel Inspirations",
                          style: TextStyle(
                              color: blackColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        Text(
                          "Dubai",
                          style: TextStyle(
                              color: blackColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 10),
                          child: Container(
                            height: height / 3,
                            width: width / 1.8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(bannerScrollOne))),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "From AED867",
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "Economy Round Trip",
                                    style: TextStyle(
                                        color: whiteColor, fontSize: 18),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "Saudi Arabia",
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: height / 3,
                            width: width / 1.8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(bannerScrollTwo))),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "From AED867",
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "Economy Round Trip",
                                    style: TextStyle(
                                        color: whiteColor, fontSize: 18),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "Kuwait",
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Flight & Hotal Packages",
                          style: TextStyle(
                              color: blackColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: height / 3,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(bottomBanner))),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
