import 'package:braille_alfabesi/model/classes.dart';
import 'package:flutter/material.dart';

import '../model/variables.dart';

class BraillePage02 extends StatefulWidget {
  const BraillePage02({Key? key}) : super(key: key);

  @override
  State<BraillePage02> createState() => _BraillePage02State();
}

class _BraillePage02State extends State<BraillePage02> {
  bool _isVisible = false;

  final textEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(page02AppBarTitle),
      ),
      body: Center(
        child: Padding(
          padding: CustomPaddings().topPadding,
          child: Padding(
            padding: CustomPaddings().horizontalPadding,
            child: Column(
              children: [
                const Text(page02Title),
                Padding(
                  padding: CustomPaddings().topPadding,
                  child: TextField(
                    controller: textEditingController,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: page02TextFieldText,
                    ),
                  ),
                ),
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
                    child: const Text(page02ButtonText,
                        style: TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.underline))),
                Visibility(
                  visible: _isVisible,
                  child: SizedBox(
                      height: 300,
                      width: 300,
                      child: Image.asset(
                          errorBuilder: (context, error, stackTrace) =>
                              const Center(child: Text(page02ErrorText)),
                          'assets/brailleLettersLower/${textEditingController.text.toLowerCase()}.png')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
