import 'package:braille_alfabesi/model/classes.dart';
import 'package:braille_alfabesi/model/variables.dart';
import 'package:flutter/material.dart';

part 'braille_page03.1.dart';

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
                      _floatButton01(),
                      _floatButton02(),
                    ],
                  ),
                ),
                Padding(
                  padding: CustomPaddings().topPadding * 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _floatButton03(),
                      _floatButton04(),
                    ],
                  ),
                ),
                Padding(
                  padding: CustomPaddings().topPadding * 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _floatButton05(),
                      _floatButton06(),
                    ],
                  ),
                ),
                Padding(
                  padding: CustomPaddings().topPadding * 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        // it shows the letters of what you have selected
                        _harfGosterDialog(context),
                        _harfGosterDialogTemizle()
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

  Padding _harfGosterDialogTemizle() {
    return Padding(
      padding: CustomPaddings().horizontalPadding + CustomPaddings().topPadding,
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
        label: const Text('Temizle', style: TextStyle(color: Colors.black)),
      ),
    );
  }

  Padding _harfGosterDialog(BuildContext context) {
    return Padding(
      padding: CustomPaddings().horizontalPadding + CustomPaddings().topPadding,
      child: OutlinedButton.icon(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: const Text('Harf'),
                      content: _DenemeHarfGoster(
                          button01: _button01,
                          button02: _button02,
                          button03: _button03,
                          button04: _button04,
                          button05: _button05,
                          button06: _button06),
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
          icon: const Icon(Icons.remove_red_eye_outlined),
          label: const Text('Goster', style: TextStyle(color: Colors.black))),
    );
  }

  FloatingActionButton _floatButton06() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          _button06 = !_button06;
        });
      },
      backgroundColor: _button06 ? Colors.black : Colors.grey,
    );
  }

  FloatingActionButton _floatButton05() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          _button05 = !_button05;
        });
      },
      backgroundColor: _button05 ? Colors.black : Colors.grey,
    );
  }

  FloatingActionButton _floatButton04() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          _button04 = !_button04;
        });
      },
      backgroundColor:
          _button04 ? MyColors().selectedColor : MyColors().unselectedColor,
    );
  }

  FloatingActionButton _floatButton03() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          _button03 = !_button03;
        });
      },
      backgroundColor:
          _button03 ? MyColors().selectedColor : MyColors().unselectedColor,
    );
  }

  FloatingActionButton _floatButton02() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          _button02 = !_button02;
        });
      },
      backgroundColor:
          _button02 ? MyColors().selectedColor : MyColors().unselectedColor,
    );
  }

  FloatingActionButton _floatButton01() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          _button01 = !_button01;
        });
      },
      backgroundColor:
          _button01 ? MyColors().selectedColor : MyColors().unselectedColor,
    );
  }
}
