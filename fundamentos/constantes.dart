import 'dart:io';

main() {
  const pi = 3.1415;

  stdout.write('Digite o raio do círculo: ');
  final userEnter = stdin.readLineSync()!;

  final raio = double.parse(userEnter);

  final area = pi * (raio * raio);
  stdout.write('A área do círculo é: ' + area.toString());
}
