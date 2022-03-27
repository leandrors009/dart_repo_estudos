import 'dart:io';

main() {
  stdout.write('N1 -> ');
  var n1 = double.parse(stdin.readLineSync().toString());

  stdout.write('Qual a operação? -> ');
  var op = stdin.readLineSync().toString();

  stdout.write('N2 -> ');
  double n2 = double.parse(stdin.readLineSync().toString());

  switch (op) {
    case '+':
      {
        print(n1 + n2);
      }
      break;
    case '-':
      {
        print(n1 - n2);
      }
      break;
    case '*':
      {
        print(n1 * n2);
      }
      break;
    case '/':
      {
        print(n1 / n2);
      }
      break;
    default:
      {
        print('Operação inválida!!');
      }
  }
}
