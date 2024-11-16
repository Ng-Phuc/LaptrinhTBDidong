// Giai pt bac 2 : ax^2 + bx + c =0
import 'dart:math';
import 'dart:io';

void main() {
  double? a;
  double? b;
  double? c;

  do {
    stdout.write('Nhập hệ số a khác 0: ');
    a = double.tryParse(stdin.readLineSync()!);
    if (a == null || a == 0) {
      print('Hệ số a không hợp lệ, vui lòng nhập lại: ');
    }
  } while (a == null || a == 0);

  do {
    stdout.write('Nhập hệ số b: ');
    b = double.tryParse(stdin.readLineSync()!);
    if (b == null) {
      print('Hệ số b không hợp lệ, vui lòng nhập lại: ');
    }
  } while (b == null);

  do {
    stdout.write('Nhập hệ số c: ');
    c = double.tryParse(stdin.readLineSync()!);
    if (c == null) {
      print('Hệ số c không hợp lệ, vui lòng nhập lại: ');
    }
  } while (c == null);

  double delta = b * b - 4 * a * c;

  if (delta < 0) {
    print('Phương trình vô nghiệm.');
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print('Phương trình có nghiệm kép: x = ${x.toStringAsFixed(2)}');
  } else {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    print('Phương trình có hai nghiệm phân biệt:');
    print('x1 = ${x1.toStringAsFixed(2)}');
    print('x2 = ${x2.toStringAsFixed(2)}');
  }
}
