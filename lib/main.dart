// 1. IMPORTACIONES: Requeridas para que el código funcione.
// Importamos la librería principal de Flutter que contiene los widgets de diseño (Material Design).
import 'package:flutter/material.dart';
// Conectamos este archivo con el código de la primera pantalla que creamos.
import 'window_1.dart';

// 2. FUNCIÓN PRINCIPAL (Punto de entrada):
// Es el primer método que se ejecuta al abrir la aplicación.
void main() {
  // runApp: Toma el widget raíz (MiAppZoe) y lo dibuja en la pantalla del dispositivo.
  runApp(const MiAppZoe());
}

// 3. WIDGET RAÍZ DE LA APLICACIÓN:
// Usamos StatelessWidget porque la configuración global de la app no cambiará en tiempo de ejecución.
class MiAppZoe extends StatelessWidget {
  // El constructor con {super.key} permite que Flutter identifique este widget
  // de forma única dentro del árbol de elementos para optimizar el rendimiento.
  const MiAppZoe({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp: El widget de configuración global. Define el "esqueleto" de la app.
    return MaterialApp(
      // Quita la etiqueta roja de "Debug" que aparece por defecto en la esquina superior.
      debugShowCheckedModeBanner: false,

      // title: Es el nombre que el sistema operativo muestra en el administrador de tareas.
      title: 'Universo Zoé',

      // home: Define la ruta inicial o el widget que se cargará como pantalla de bienvenida.
      // En este caso, invocamos a la clase Window1 definida en el archivo importado.
      home: Window1(),
    );
  }
}
