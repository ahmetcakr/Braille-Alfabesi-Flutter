part of 'braille_page03.dart';

// continue from lib\view-model\braille_page03.dart:

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
