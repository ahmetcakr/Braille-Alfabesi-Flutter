import 'package:flutter/material.dart';

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
        title: const Text('Harf Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Text(
                    'Braille Dilinde Görmek İstediğiniz Harfi Aşağıdaki Boşluğa Yazınız'),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextField(
                    controller: textEditingController,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Harf Giriniz',
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
                    child: const Text('Dönüştürmek için tıklayınız')),
                Visibility(
                  visible: _isVisible,
                  child: SizedBox(
                      height: 300,
                      width: 300,
                      child: Image.asset(
                          errorBuilder: (context, error, stackTrace) =>
                              const Center(child: Text('Harf Giriniz')),
                          'assets/brailleLetters/${textEditingController.text}.png')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
