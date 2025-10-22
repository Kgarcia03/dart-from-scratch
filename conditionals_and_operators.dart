import 'dart:io';

void main() {
  print("ingrese el primer número:");

  double? a = double.tryParse(stdin.readLineSync()!);
  print("ingrese el segundo número");
  double? b = double.tryParse(stdin.readLineSync()!);

  const indeterminado = "indeterminado";
  if (a != null && b != null) {
    print(
      'suma: ${a + b}, resta: ${a - b}, Multiplicación: ${a * b}, división: ${(b != 0 ? a / b : indeterminado)}',
    );
  } else {
    print("Por favor, ingrese valores númericos válidos.");
  }
}
