import 'package:braille_alfabesi/model/classes.dart';
import 'package:braille_alfabesi/model/lists.dart';
import 'package:braille_alfabesi/model/variables.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BraillePage01 extends StatefulWidget {
  const BraillePage01({Key? key}) : super(key: key);

  @override
  State<BraillePage01> createState() => _BraillePage01State();
}

class _BraillePage01State extends State<BraillePage01> {
  int imageIndex = 0;
  final String _github = 'https://github.com/ahmetcakr';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GestureDetector().behavior;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(page01AppBarTitle),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                          actions: [
                            TextButton(
                                onPressed: () {
                                  launch(_github);
                                },
                                child: const Text('Github')),
                            ElevatedButton(
                              child: const Text('OK'),
                              onPressed: () {
                                Navigator.of(ctx).pop();
                              },
                            ),
                          ],
                          title: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset('assets/cakirlittle.png')),
                          content: Card(
                            elevation: 5,
                            child: SizedBox(
                              height: 250,
                              width: 250,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text('Braille Alfabesi Nedir ?',
                                      textAlign: TextAlign.center),
                                  Text('\n\n', textAlign: TextAlign.center),
                                  Text(
                                      'Braille Alfabesi, Braille alfabesi veya Körler alfabesi;\n\n'
                                      " 1821 yılında Louis Braille tarafından geliştirilmiş görme engelli insanların okuyup yazması için kullanılan bir alfabe yöntemidir.\n"
                                      " İki kolon taşıyan dikdörtgen düzen üzerine dizilmiş altı kabartılmış noktadan oluşur. \n"
                                      "Her iki kolonda üçer nokta bulunur. Noktalardan her biri altmışdört farklı kombinasyondan birini oluşturması için farklı şekillerde dizilir. ",
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                          ),
                        ));
              },
              icon: const Icon(Icons.question_mark_rounded))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              _title(page01Title),
              Padding(
                  padding: CustomPaddings().topPadding,
                  child: Text('${alfabe[imageIndex]}',
                      style: const TextStyle(
                          fontSize: 40,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold))),
              Center(
                child: SizedBox(
                  width: 350,
                  height: 350,
                  child: Image.asset(
                      'assets/brailleLettersLower/${alfabeLower[imageIndex]}.png'),
                  //child: itemImages[imageIndex],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: CustomPaddings().allPadding,
                      child: backButton(),
                    ),
                    Padding(
                      padding: CustomPaddings().allPadding,
                      child: nextButton(),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
      child: Text(title,
          style: const TextStyle(fontSize: 30, fontFamily: 'Roboto')),
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
