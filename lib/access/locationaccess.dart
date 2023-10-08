import 'package:flutter/material.dart';

class LocationOn extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final String address;
  const LocationOn(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.address});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            TextButton(
              onPressed: onPressed,
              child: Text(
                address,
                style: const TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 12.0,
                ),
              ),
            ),
            const Icon(
              Icons.location_on,
              color: Colors.orangeAccent,
            )
          ],
        ),
      ],
    );
  }
}
