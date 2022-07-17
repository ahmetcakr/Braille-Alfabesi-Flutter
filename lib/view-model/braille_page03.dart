import 'package:braille_alfabesi/model/classes.dart';
import 'package:braille_alfabesi/model/variables.dart';
import 'package:flutter/material.dart';

class BraillePage03 extends StatefulWidget {
  const BraillePage03({Key? key}) : super(key: key);

  @override
  State<BraillePage03> createState() => _BraillePage03State();
}

class _BraillePage03State extends State<BraillePage03> {
  bool _button01 = false;
  bool _button02 = false;
  bool _button03 = false;
  bool _button04 = false;
  bool _button05 = false;
  bool _button06 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(page03AppBarTitle),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            height: 500,
            width: 500,
            child: Column(
              children: [
                Padding(
                  padding: CustomPaddings().topPadding * 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            _button01 = !_button01;
                          });
                        },
                        backgroundColor: _button01 ? Colors.black : Colors.grey,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            _button02 = !_button02;
                          });
                        },
                        backgroundColor: _button02 ? Colors.black : Colors.grey,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: CustomPaddings().topPadding * 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            _button03 = !_button03;
                          });
                        },
                        backgroundColor: _button03 ? Colors.black : Colors.grey,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            _button04 = !_button04;
                          });
                        },
                        backgroundColor: _button04 ? Colors.black : Colors.grey,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: CustomPaddings().topPadding * 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            _button05 = !_button05;
                          });
                        },
                        backgroundColor: _button05 ? Colors.black : Colors.grey,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            _button06 = !_button06;
                          });
                        },
                        backgroundColor: _button06 ? Colors.black : Colors.grey,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: CustomPaddings().topPadding * 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: CustomPaddings().horizontalPadding +
                              CustomPaddings().topPadding,
                          child: OutlinedButton.icon(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          title: const Text('Harf'),
                                          content:
                                              DenemeHarfler(button1: _button02)
                                                  .denemeHarfGoster(),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text('Kapat'),
                                            ),
                                          ],
                                        ));
                              },
                              icon: const Icon(Icons.check),
                              label: const Text('Goster',
                                  style: TextStyle(color: Colors.black))),
                        ),
                        Padding(
                          padding: CustomPaddings().horizontalPadding +
                              CustomPaddings().topPadding,
                          child: OutlinedButton.icon(
                            onPressed: () {
                              setState(() {
                                _button01 = false;
                                _button02 = false;
                                _button03 = false;
                                _button04 = false;
                                _button05 = false;
                                _button06 = false;
                              });
                            },
                            icon: const Icon(Icons.delete_outline_outlined),
                            label: const Text('Sil',
                                style: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DenemeHarfler {
  bool button1;
  bool button2;
  bool button3;
  bool button4;
  bool button5;
  bool button6;

  DenemeHarfler({
    this.button1 = false,
    this.button2 = false,
    this.button3 = false,
    this.button4 = false,
    this.button5 = false,
    this.button6 = false,
  });

  Text denemeHarfGoster() {
    if (button1) {
      return const Text('A');
    } else if (button2) {
      return const Text('B');
    } else if (button3) {
      return const Text('C');
    } else if (button4) {
      return const Text('D');
    } else if (button5) {
      return const Text('E');
    } else if (button6) {
      return const Text('F');
    } else {
      return const Text('Harf yok');
    }
  }
}
