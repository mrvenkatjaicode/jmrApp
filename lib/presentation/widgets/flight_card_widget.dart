import 'package:flutter/material.dart';
import 'package:jmrapp/core/utils/const.dart';

import 'dotted_line_widget.dart';

class FlightCard extends StatelessWidget {
  final String title1;
  final String price1;
  final String departureTime1;
  final String departureLocation1;
  final String arrivalTime1;
  final String arrivalLocation1;
  final String duration1;
  final String stops1;
  final String title2;
  final String price2;
  final String departureTime2;
  final String departureLocation2;
  final String arrivalTime2;
  final String arrivalLocation2;
  final String duration2;
  final String stops2;
  const FlightCard({
    super.key,
    required this.title1,
    required this.price1,
    required this.departureTime1,
    required this.departureLocation1,
    required this.arrivalTime1,
    required this.arrivalLocation1,
    required this.duration1,
    required this.stops1,
    required this.title2,
    required this.price2,
    required this.departureTime2,
    required this.departureLocation2,
    required this.arrivalTime2,
    required this.arrivalLocation2,
    required this.duration2,
    required this.stops2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(flightLogo),
                  const SizedBox(width: 5),
                  Text(
                    title1,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Text(
                price1,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      departureTime1,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      departureLocation1,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(flightDot),
                    Text(
                      duration1,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Text(
                      stops1,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      arrivalTime1,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      arrivalLocation1,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            height: 1,
            color: Colors.grey.shade400,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(flightLogo),
                  const SizedBox(width: 5),
                  Text(
                    title2,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Text(
                price2,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      departureTime2,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      departureLocation2,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Image.asset(flightDot),
                    Text(
                      duration2,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Text(
                      stops2,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      arrivalTime2,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      arrivalLocation2,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          CustomPaint(
            painter: DottedLinePainter(),
            size: const Size(double.infinity, 1),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FooterButton(
                label: 'Cheapest',
                color: Colors.green[100]!,
                textColor: Colors.green,
              ),
              FooterButton(
                label: 'Refundable',
                color: Colors.blue[100]!,
                textColor: Colors.blue,
              ),
              const FooterButton(
                label: 'Flight Details',
                color: Colors.transparent,
                textColor: Colors.orange,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FooterButton extends StatelessWidget {
  final String label;
  final Color color;
  final Color textColor;

  const FooterButton({
    super.key,
    required this.label,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: textColor,
          width: 1,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
