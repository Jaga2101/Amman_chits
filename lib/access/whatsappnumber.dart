import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsAppNumber extends StatefulWidget {
  final String text;
  final String phoneNumber;

  const WhatsAppNumber(this.text, this.phoneNumber);

  @override
  State<WhatsAppNumber> createState() => _WhatsAppNumberWidgetState();
}

class _WhatsAppNumberWidgetState extends State<WhatsAppNumber> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.text,
          style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {
                _sendMessageToWhatsApp(widget.phoneNumber);
              },
              child: Text(
                widget.phoneNumber,
                style: const TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
            Image.asset(
              'assets/icon/what.png',
              height: 20,
              width: 20,
            )
          ],
        ),
      ],
    );
  }

  _sendMessageToWhatsApp(String phoneNumber) async {
    final whatsappUrl = 'https://wa.me/$phoneNumber';
    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }
}
