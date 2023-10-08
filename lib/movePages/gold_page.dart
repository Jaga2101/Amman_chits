import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class GoldPage extends StatefulWidget {
  const GoldPage({Key? key}) : super(key: key);

  @override
  _GoldPageState createState() => _GoldPageState();
}

class _GoldPageState extends State<GoldPage> {
  List<String> imagePaths = [
    'assets/cards/intro.png',
    'assets/cards/two.png',
    'assets/cards/three.png',
    'assets/cards/four.png',
    'assets/cards/five.png',
    'assets/cards/six.png',
    'assets/cards/seven.png',
    'assets/cards/eight.png',
    'assets/cards/nayan.png',
    'assets/cards/ten.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 380,
                    height: 590,
                    child: PageView.builder(
                      itemCount: imagePaths.length,
                      controller: PageController(initialPage: currentIndex),
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        final assetImagePath = imagePaths[index];
                        final assetImage = AssetImage(assetImagePath);
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: GestureDetector(
                              onLongPress: () async {
                                try {
                                  final ByteData byteData =
                                      await rootBundle.load(assetImagePath);
                                  final List<int> bytes =
                                      byteData.buffer.asUint8List();
                                  final tempDir = await getTemporaryDirectory();
                                  final tempFile = File('${tempDir.path}/.png');
                                  await tempFile.writeAsBytes(bytes);
                                  // ignore: deprecated_member_use
                                  await Share.shareFiles([tempFile.path],
                                      text: 'Amman Chits');
                                } catch (e) {
                                  AboutDialog(
                                    children: [Text('Error sharing file: $e')],
                                  );
                                }
                              },
                              child: Image(
                                image: assetImage,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 270,
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == currentIndex
                            ? const Color.fromARGB(255, 3, 241, 11)
                            : const Color.fromARGB(255, 135, 169, 225),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
