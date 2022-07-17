import 'package:braille_alfabesi/model/lists.dart';
import 'package:flutter/material.dart';

class BraillePage01 extends StatefulWidget {
  const BraillePage01({Key? key}) : super(key: key);

  @override
  State<BraillePage01> createState() => _BraillePage01State();
}

class _BraillePage01State extends State<BraillePage01> {
  int imageIndex = 0;

  @override
  Widget build(BuildContext context) {
    const String title = 'BRAILLE ALFABESİ';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alfabe Page'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.question_mark_rounded))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            _title(title),
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('${alfabe[imageIndex]} HARFİ',
                    style: const TextStyle(fontSize: 30))),
            Center(
              child: SizedBox(
                width: 300,
                height: 300,
                child: itemImages[imageIndex],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                backButton(),
                nextButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  OutlinedButton nextButton() {
    return OutlinedButton.icon(
        onPressed: () {
          setState(() {
            if (imageIndex < alfabe.length - 1) {
              imageIndex++;
            }
          });
        },
        icon: const Icon(Icons.arrow_forward),
        label: const Text('Sonraki'));
  }

  OutlinedButton backButton() {
    return OutlinedButton.icon(
      onPressed: () {
        setState(() {
          if (imageIndex > 0) {
            imageIndex--;
          }
        });
      },
      icon: const Icon(Icons.arrow_back),
      label: const Text('Önceki'),
    );
  }

  Padding _title(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(title, style: const TextStyle(fontSize: 30)),
    );
  }
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      // fit: BoxFit.cover,
    );
  }

  String get _nameWithPath => "assets/brailleLetters/$name";
}
