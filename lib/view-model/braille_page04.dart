import 'package:braille_alfabesi/model/classes.dart';
import 'package:flutter/material.dart';

import '../model/variables.dart';

class BraillePage04 extends StatefulWidget {
  const BraillePage04({Key? key}) : super(key: key);

  @override
  State<BraillePage04> createState() => _BraillePage04State();
}

class _BraillePage04State extends State<BraillePage04> {
  bool _isVisible = false;

  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(page04AppBarTitle),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: CustomPaddings().topPadding +
                CustomPaddings().horizontalPadding,
            child: Column(
              children: [
                const Text(page04Title),
                Padding(
                  padding: CustomPaddings().topPadding,

                  // textfield for input

                  child: TextField(
                    controller: _textEditingController,
                    maxLength: 10,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: page04TextFieldText,
                    ),
                  ),
                ),

                // button for showing the result

                TextButton(
                    onPressed: () {
                      setState(
                        () {
                          if (_isVisible = true) {
                            _isVisible = true;
                          }
                        },
                      );
                    },
                    child: const Text(page04ButtonText,
                        style: TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.underline))),
                ListView(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    for (var i = 0; i < _textEditingController.text.length; i++)
                      ListTile(
                        title: Center(
                          child: Text(
                            _textEditingController.text[i],
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Center(
                            child: Container(
                          color: Colors.transparent,
                          height: 200,
                          width: 200,
                          child: Image.asset(
                              errorBuilder: (context, error, stackTrace) =>
                                  const Center(child: Text(page04ErrorText)),
                              'assets/brailleLettersLower/${_textEditingController.text[i].toLowerCase()}.png'),
                        )),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
