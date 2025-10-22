import 'dart:io';
import 'challenges/index.dart';
import 'menu/index.dart';

void main() {
  print("Ingrese su nombre:");
  String? nombre = stdin.readLineSync();
  print("¡Hola, $nombre! Por favor, elige un ejercicio del siguiente menú:");

  var menu = Menu();
  menu.MostrarMenu();

  while (true) {
    stdout.write('Selecciona una opción (1-15) o "q"/"exit" para salir: ');
    String entrada = stdin.readLineSync()!.toLowerCase();

    if (entrada == "q" || entrada == "exit") {
      print('Programa finalizado. ¡Hasta luego, $nombre!');
      break;
    }

    int? eleccion = int.tryParse(entrada);

    if (eleccion != null && eleccion >= 1 && eleccion <= 15) {
      switch (eleccion) {
        case 1:
          Challenge1().run();
          break;
        case 2:
          Challenge2().run();
          break;
        case 3:
          Challenge3().run();
          break;
        case 4:
          Challenge4().run();
          break;
        case 5:
          Challenge5().run();
          break;
        case 6:
          Challenge6().run();
          break;
        case 7:
          Challenge7().run();
          break;
        case 8:
          Challenge8().run();
          break;
        case 9:
          Challenge9().run();
          break;
        case 10:
          Challenge10().run();
          break;
        case 11:
          Challenge11().run();
          break;
        case 12:
          Challenge12().run();
          break;
        case 13:
          Challenge13().run();
          break;
        case 14:
          Challenge14().run();
          break;
        case 15:
          Challenge15().run();
          break;
      }
    } else {
      print('Opción inválida. Intente nuevamente.');
    }

    menu.MostrarMenu();
  }
}
