import 'package:amman_chits/access/locationaccess.dart';
import 'package:amman_chits/access/phone.dart';
import 'package:amman_chits/movePages/gold_page.dart';
import 'package:amman_chits/movePages/plat_page.dart';
import 'package:amman_chits/access/whatsappnumber.dart';
import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  callnumber() async {
    await launchUrl(Uri(scheme: 'tel', path: '9361000950'));
  }

  callnumber1() async {
    await launchUrl(Uri(scheme: 'tel', path: '8610115093'));
  }

  callnumber2() async {
    await launchUrl(Uri(scheme: 'tel', path: '7339557145'));
  }

  callnumber3() async {
    await launchUrl(Uri(scheme: 'tel', path: '8838336941'));
  }

  callnumber4() async {
    await launchUrl(Uri(scheme: 'tel', path: '9600796598'));
  }

  callnumber5() async {
    await launchUrl(Uri(scheme: 'tel', path: '9943720930'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/one.png',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      actions: [
                        Container(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: Image.asset('assets/AK.png'),
                              ),
                              const Text(
                                'Announcement',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'New Scheme Started on December',
                                style: TextStyle(fontSize: 13.0),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                '2023',
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const GoldPage(),
                                          ),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                        textStyle:
                                            const TextStyle(fontSize: 14.0),
                                      ),
                                      child: const Text(
                                        'YES',
                                        style: TextStyle(
                                            color: Colors.lightGreen,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: Image.asset(
                  'assets/gold.png',
                  height: 110,
                  width: 300,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //Platinum
            SizedBox(
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      actions: [
                        Container(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: Image.asset('assets/AK.png'),
                              ),
                              const Text(
                                'Announcement',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "Kindly Attention SAC Subscriber's,This \nScheme is only available till November \n2023.If you are already existing in this\n          scheme you can continue.",
                                  style: TextStyle(
                                    fontSize: 11.0,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const PaltPage(),
                                          ),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                        textStyle:
                                            const TextStyle(fontSize: 14.0),
                                      ),
                                      child: const Text(
                                        'YES',
                                        style: TextStyle(
                                            color: Colors.lightGreen,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: Image.asset(
                  'assets/plat.png',
                  height: 110,
                  width: 270,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: BottomAppBar(
        shadowColor: Colors.white,
        height: 45.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: _launchWEURL,
              child: Container(
                width: 35,
                height: 35,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icon/web.png"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            GestureDetector(
              onTap: _launchINURL,
              child: Container(
                width: 32,
                height: 32,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icon/insta.png"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            GestureDetector(
              onTap: _launchFAURL,
              child: Container(
                width: 36,
                height: 36,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icon/face.png"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            GestureDetector(
              onTap: _launchYOURL,
              child: Container(
                width: 36,
                height: 36,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icon/you.png"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(
              width: 12.0,
            ),
            GestureDetector(
              child: Container(
                width: 37,
                height: 37,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icon/call.png"),
                      fit: BoxFit.cover),
                ),
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    actions: [
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Contact Details',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Press on the number to direct Call',
                              style: TextStyle(fontSize: 12.8),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                MyPhone(
                                    text: 'Trichy',
                                    onPressed: callnumber,
                                    phoNo: '9381000950'),
                                MyPhone(
                                    text: 'Karur',
                                    onPressed: callnumber1,
                                    phoNo: '8610115093'),
                                MyPhone(
                                    text: 'Namakkal',
                                    onPressed: callnumber2,
                                    phoNo: '7339557145'),
                                MyPhone(
                                    text: 'Madurai',
                                    onPressed: callnumber3,
                                    phoNo: '8838336941'),
                                MyPhone(
                                    text: 'Salem',
                                    onPressed: callnumber4,
                                    phoNo: '9600796598'),
                                MyPhone(
                                    text: 'Thanjavur',
                                    onPressed: callnumber5,
                                    phoNo: '9943720930'),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Toll Free No : 1800 425 1432',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      style: TextButton.styleFrom(
                                        textStyle:
                                            const TextStyle(fontSize: 14.0),
                                      ),
                                      child: const Text('Cancel')),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            GestureDetector(
              child: Container(
                  width: 37,
                  height: 37,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icon/what.png"),
                        fit: BoxFit.cover),
                  )),
              onTap: () {
                showDialog(
                  // barrierColor: Colors.greenAccent,
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    actions: [
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Whatsapp Details',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Press on the number to direct whatsapp chat',
                              style: TextStyle(fontSize: 12.1),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Column(
                              children: [
                                WhatsAppNumber('Trichy', '9361000950'),
                                WhatsAppNumber('Karur', '8610115093'),
                                WhatsAppNumber('Namakkal', '7339557145'),
                                WhatsAppNumber('Madurai', '883836941'),
                                WhatsAppNumber('Salem', '9600796598'),
                                WhatsAppNumber('Thanjavur', '9943720930'),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      style: TextButton.styleFrom(
                                        textStyle:
                                            const TextStyle(fontSize: 14.0),
                                      ),
                                      child: const Text(
                                        'Cancel',
                                        style: TextStyle(color: Colors.green),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            GestureDetector(
              child: Container(
                  width: 37,
                  height: 39,
                  decoration: const BoxDecoration(
                    // color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage("assets/icon/locat.png"),
                        fit: BoxFit.cover),
                    // button text
                  )),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    actions: [
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Location Details',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'Press on the location and get the direction in Map',
                              style: TextStyle(fontSize: 12.1),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Column(
                              children: [
                                LocationOn(
                                  text: 'Trichy',
                                  onPressed: () => MapsLauncher.launchQuery(
                                      'Femina Mall, Trichy'),
                                  address: 'Femina Mall',
                                ),
                                LocationOn(
                                    text: 'Karur',
                                    onPressed: () => MapsLauncher.launchQuery(
                                        'Plaza Bus Stand, Karur'),
                                    address: 'Plaza Mall'),
                                LocationOn(
                                    text: 'Namakkal',
                                    onPressed: () => MapsLauncher.launchQuery(
                                        'S.P.pudur, Namakkal'),
                                    address: 'MK Tower'),
                                LocationOn(
                                    text: 'Madurai',
                                    onPressed: () => MapsLauncher.launchQuery(
                                        'Mgr Bus Stand, Madurai'),
                                    address: 'MGR Tower'),
                                LocationOn(
                                    text: 'Salem',
                                    onPressed: () => MapsLauncher.launchQuery(
                                        'Reliance Mall, Salem'),
                                    address: 'Reliance Mall'),
                                LocationOn(
                                    text: 'Thanjavur',
                                    onPressed: () => MapsLauncher.launchQuery(
                                        'Clock Tower, Thanjavur'),
                                    address: 'Clock Tower'),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: TextButton.styleFrom(
                                      // padding: const EdgeInsets.fromLTRB(
                                      // 30, 15, 30, 15),
                                      textStyle:
                                          const TextStyle(fontSize: 14.0),
                                    ),
                                    child: const Text(
                                      'Cancel',
                                      style: TextStyle(
                                        color: Colors.orange,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 30,
                child: Text(
                  'Toll Free : 1800 425 1432  ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 33, 32, 32),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_launchWEURL() async {
  Uri url = Uri.parse('https://www.jayanathanchits.com/');
  if (await launchUrl(url)) {
    // await launchUrl(_url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchINURL() async {
  Uri url = Uri.parse(
      'https://instagram.com/sreejayanathanchits?igshid=MWZjMTM2ODFkZg==');
  if (await launchUrl(url)) {
    // await launchUrl(_url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchFAURL() async {
  Uri url = Uri.parse('https://m.facebook.com/SjChits');
  if (await launchUrl(url)) {
    // await launchUrl(_url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchYOURL() async {
  Uri url = Uri.parse(
      'https://youtube.com/@sreejayanathanchits6684?si=R6RLsoKlhSYesqQa');
  if (await launchUrl(url)) {
    // await launchUrl(_url);
  } else {
    throw 'Could not launch $url';
  }
}
