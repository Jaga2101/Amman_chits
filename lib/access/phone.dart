import 'package:flutter/material.dart';

class MyPhone extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final String phoNo;
  const MyPhone(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.phoNo});

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
                phoNo,
              ),
            ),
            const Icon(
              Icons.vibration,
              color: Color.fromARGB(255, 98, 185, 226),
            ),
          ],
        ),
      ],
    );
  }
}











// class PhoNumber {
//   String scheme;
//   String path;

//   PhoNumber({
//     required this.scheme,
//     required this.path,
//   });
//   String get _scheme => scheme;
//   String get _path => path;
// }
