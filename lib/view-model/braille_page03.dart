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

class _DenemeHarfGoster extends StatelessWidget {
  const _DenemeHarfGoster({
    Key? key,
    required bool button01,
    required bool button02,
    required bool button03,
    required bool button04,
    required bool button05,
    required bool button06,
  })  : _button01 = button01,
        _button02 = button02,
        _button03 = button03,
        _button04 = button04,
        _button05 = button05,
        _button06 = button06,
        super(key: key);

  final bool _button01;
  final bool _button02;
  final bool _button03;
  final bool _button04;
  final bool _button05;
  final bool _button06;

  @override
  Widget build(BuildContext context) {
    if (_button01 == true &&
        _button02 == false &&
        _button03 == false &&
        _button04 == false &&
        _button05 == false &&
        _button06 == false) {
      return const Text('A');
    }
    if (_button01 == true &&
        _button03 == true &&
        _button04 == false &&
        _button05 == false &&
        _button06 == false &&
        _button02 == false) {
      return const Text('B');
    }
    if (_button01 == true &&
        _button02 == true &&
        _button04 == false &&
        _button05 == false &&
        _button06 == false &&
        _button03 == false) {
      return const Text('C');
    }
    if (_button01 == true &&
        _button03 == false &&
        _button04 == true &&
        _button05 == false &&
        _button06 == false &&
        _button02 == true) {
      return const Text('D');
    }
    if (_button01 == true &&
        _button02 == false &&
        _button03 == false &&
        _button04 == true &&
        _button05 == false &&
        _button06 == false) {
      return const Text('E');
    }
    if (_button01 == true &&
        _button02 == true &&
        _button03 == true &&
        _button04 == false &&
        _button05 == false &&
        _button06 == false) {
      return const Text('F');
    } // burada kaldı
    if (_button01 == true &&
        _button02 == true &&
        _button03 == true &&
        _button04 == true &&
        _button05 == false &&
        _button06 == false) {
      return const Text('G');
    }
    if (_button01 == true &&
        _button02 == false &&
        _button03 == true &&
        _button04 == true &&
        _button05 == false &&
        _button06 == false) {
      return const Text('H');
    }
    if (_button01 == false &&
        _button02 == true &&
        _button03 == true &&
        _button04 == false &&
        _button05 == false &&
        _button06 == false) {
      return const Text('I');
    }
    if (_button01 == false &&
        _button02 == true &&
        _button03 == true &&
        _button04 == true &&
        _button05 == false &&
        _button06 == false) {
      return const Text('J');
    }
    if (_button01 == true &&
        _button02 == false &&
        _button03 == false &&
        _button04 == false &&
        _button05 == true &&
        _button06 == false) {
      return const Text('K');
    }
    if (_button01 == true &&
        _button02 == false &&
        _button03 == true &&
        _button04 == false &&
        _button05 == true &&
        _button06 == false) {
      return const Text('L');
    }
    if (_button01 == true &&
        _button02 == true &&
        _button03 == false &&
        _button04 == false &&
        _button05 == true &&
        _button06 == false) {
      return const Text('M');
    }
    if (_button01 == true &&
        _button02 == true &&
        _button03 == false &&
        _button04 == true &&
        _button05 == true &&
        _button06 == false) {
      return const Text('N');
    }
    if (_button01 == true &&
        _button02 == false &&
        _button03 == false &&
        _button04 == true &&
        _button05 == true &&
        _button06 == false) {
      return const Text('O');
    }
    if (_button01 == true &&
        _button02 == true &&
        _button03 == true &&
        _button04 == false &&
        _button05 == true &&
        _button06 == false) {
      return const Text('P');
    }
    if (_button01 == true &&
        _button02 == true &&
        _button03 == true &&
        _button04 == true &&
        _button05 == true &&
        _button06 == false) {
      return const Text('Q');
    }
    if (_button01 == true &&
        _button02 == false &&
        _button03 == true &&
        _button04 == true &&
        _button05 == true &&
        _button06 == false) {
      return const Text('R');
    }
    if (_button01 == false &&
        _button02 == true &&
        _button03 == true &&
        _button04 == false &&
        _button05 == true &&
        _button06 == false) {
      return const Text('S');
    }
    if (_button01 == false &&
        _button02 == true &&
        _button03 == true &&
        _button04 == true &&
        _button05 == true &&
        _button06 == false) {
      return const Text('T');
    }
    if (_button01 == true &&
        _button02 == false &&
        _button03 == false &&
        _button04 == false &&
        _button05 == true &&
        _button06 == true) {
      return const Text('U');
    }
    if (_button01 == true &&
        _button02 == false &&
        _button03 == true &&
        _button04 == false &&
        _button05 == true &&
        _button06 == true) {
      return const Text('V');
    }
    if (_button01 == false &&
        _button02 == true &&
        _button03 == true &&
        _button04 == false &&
        _button05 == true &&
        _button06 == true) {
      return const Text('W');
    }
    if (_button01 == true &&
        _button02 == true &&
        _button03 == false &&
        _button04 == false &&
        _button05 == true &&
        _button06 == true) {
      return const Text('X');
    }
    if (_button01 == true &&
        _button02 == true &&
        _button03 == false &&
        _button04 == true &&
        _button05 == true &&
        _button06 == true) {
      return const Text('Y');
    }
    if (_button01 == true &&
        _button02 == false &&
        _button03 == false &&
        _button04 == true &&
        _button05 == true &&
        _button06 == true) {
      return const Text('Z');
    } else {
      return const Text('Harf yok');
    }
  }
}

class MyColors {
  Color selectedColor = Colors.black;
  Color unselectedColor = Colors.grey;
}
