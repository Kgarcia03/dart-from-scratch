import 'dart:io';
import 'dart:math';

class Challenge1 {
  void run() {
    print('Ingrese un número:');
    double num = double.parse(stdin.readLineSync()!);
    if (num > 0) {
      print('Resultado: ${num * num}');
    } else if (num == 0) {
      print('Resultado: 0');
    } else {
      print('Número negativo.');
    }
  }
}

class Challenge2 {
  void run() {
    print('Ingrese el primer número:');
    double a = double.parse(stdin.readLineSync()!);
    print('Ingrese el segundo número:');
    double b = double.parse(stdin.readLineSync()!);
    if (a > b) {
      print('Resultado: ${a * 2}');
    } else {
      print('Resultado: ${b * 3}');
    }
  }
}

class Challenge3 {
  void run() {
    print('Ingrese un número:');
    double num = double.parse(stdin.readLineSync()!);
    if (num > 0) {
      print('Resultado: ${sqrt(num)}');
    } else {
      print('Resultado: ${num * num}');
    }
  }
}

class Challenge4 {
  void run() {
    print('Ingrese el radio del círculo:');
    double r = double.parse(stdin.readLineSync()!);
    double perimetro = 2 * pi * r;
    print('Resultado: ${perimetro.toStringAsFixed(2)}');
  }
}

class Challenge5 {
  void run() {
    print('Ingrese un número del 1 al 7:');
    int n = int.parse(stdin.readLineSync()!);
    List<String> dias = [
      'Lunes',
      'Martes',
      'Miércoles',
      'Jueves',
      'Viernes',
      'Sábado',
      'Domingo',
    ];
    if (n >= 1 && n <= 7) {
      print('Resultado: ${dias[n - 1]}');
    } else {
      print('Número fuera del rango 1-7.');
    }
  }
}

class Challenge6 {
  void run() {
    print('Ingrese su salario anual:');
    double salario = double.parse(stdin.readLineSync()!);
    if (salario > 12000) {
      double impuesto = (salario - 12000) * 0.15;
      print(
        'Resultado: Debe pagar ${impuesto.toStringAsFixed(2)} en impuestos.',
      );
    } else {
      print('No debe impuestos.');
    }
  }
}

class Challenge7 {
  void run() {
    print('Ingrese el primer número:');
    int a = int.parse(stdin.readLineSync()!);
    print('Ingrese el segundo número:');
    int b = int.parse(stdin.readLineSync()!);
    if (b != 0) {
      print('Resultado: ${a % b}');
    } else {
      print('No se puede dividir entre cero.');
    }
  }
}

class Challenge8 {
  void run() {
    int suma = 0;
    for (int i = 2; i <= 50; i += 2) {
      suma += i;
    }
    print('Resultado: $suma');
  }
}

class Challenge9 {
  void run() {
    print('Ingrese numerador de la primera fracción:');
    int n1 = int.parse(stdin.readLineSync()!);
    print('Ingrese denominador de la primera fracción:');
    int d1 = int.parse(stdin.readLineSync()!);
    print('Ingrese numerador de la segunda fracción:');
    int n2 = int.parse(stdin.readLineSync()!);
    print('Ingrese denominador de la segunda fracción:');
    int d2 = int.parse(stdin.readLineSync()!);

    if (d1 == 0 || d2 == 0) {
      print('El denominador no puede ser cero.');
      return;
    }

    double f1 = n1 / d1;
    double f2 = n2 / d2;
    double dif = f1 - f2;
    print('Resultado: ${dif.toStringAsFixed(3)}');
  }
}

class Challenge10 {
  void run() {
    print('Ingrese una palabra:');
    String palabra = stdin.readLineSync()!;
    print('Resultado: ${palabra.length}');
  }
}

class Challenge11 {
  void run() {
    List<double> nums = [];
    for (int i = 1; i <= 4; i++) {
      print('Ingrese número $i:');
      nums.add(double.parse(stdin.readLineSync()!));
    }
    double promedio = nums.reduce((a, b) => a + b) / nums.length;
    print('Resultado: $promedio');
  }
}

class Challenge12 {
  void run() {
    List<double> nums = [];
    for (int i = 1; i <= 5; i++) {
      print('Ingrese número $i:');
      nums.add(double.parse(stdin.readLineSync()!));
    }
    double menor = nums.reduce((a, b) => a < b ? a : b);
    print('Resultado: $menor');
  }
}

class Challenge13 {
  void run() {
    print('Ingrese una palabra:');
    String palabra = stdin.readLineSync()!.toLowerCase();
    int contador = 0;
    for (var c in palabra.split('')) {
      if ('aeiou'.contains(c)) contador++;
    }
    print('Resultado: $contador vocal(es)');
  }
}

class Challenge14 {
  void run() {
    print('Ingrese un número:');
    int n = int.parse(stdin.readLineSync()!);
    if (n < 0) {
      print('No se puede calcular el factorial de un número negativo.');
      return;
    }
    int factorial = 1;
    for (int i = 1; i <= n; i++) {
      factorial *= i;
    }
    print('Resultado: $factorial');
  }
}

class Challenge15 {
  void run() {
    print('Ingrese un número:');
    int n = int.parse(stdin.readLineSync()!);
    if (n >= 10 && n <= 20) {
      print('Está en el rango.');
    } else {
      print('Fuera del rango.');
    }
  }
}
