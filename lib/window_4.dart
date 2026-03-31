import 'package:flutter/material.dart';

class Window4 extends StatelessWidget {
  const Window4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior con el título de la sección final.
      appBar: AppBar(title: const Text('Créditos del Proyecto')),

      // SINGLECHILDSCROLLVIEW: Este widget es VITAL.
      // Permite que si el contenido es más alto que la pantalla (en celulares pequeños),
      // el usuario pueda hacer scroll y evita el error de "Overlow" (las rayas amarillas).
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),

        // SIZEDBOX con width: double.infinity:
        // Se usa para forzar a que el contenedor ocupe todo el ancho de la pantalla,
        // permitiendo que el alineamiento central de la Column funcione correctamente.
        child: SizedBox(
          width: double.infinity,
          child: Column(
            // crossAxisAlignment: Centra los elementos horizontalmente dentro de la columna.
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // CIRCLEAVATAR: Widget que crea un marco circular.
              // Ideal para mostrar fotos de perfil o iconos destacados.
              const CircleAvatar(
                radius: 60, // Tamaño del radio del círculo.
                backgroundColor: Colors.cyanAccent,
                child: Icon(Icons.person, size: 60, color: Colors.black),
              ),

              const SizedBox(height: 30), // Espaciador vertical.

              // Título del proyecto con estilo en negrita.
              const Text(
                'PROYECTO: UNIVERSO ZOÉ',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              const Text(
                'Esta aplicación fue desarrollada como práctica de maquetación en Flutter.',
                textAlign: TextAlign.center,
              ),

              // DIVIDER: Dibuja una línea horizontal sutil para separar visualmente las secciones.
              const Divider(height: 60),

              const Text('ESTUDIANTE:',
                  style: TextStyle(fontWeight: FontWeight.bold)),

              // Aquí es donde colocas tu identificación personal.
              const Text('Tu Nombre Aquí'),

              const SizedBox(height: 50),

              // TEXTBUTTON.ICON: Un botón que combina un icono y una etiqueta de texto.
              TextButton.icon(
                onPressed: () {
                  // popUntil: Esta es una función avanzada de navegación.
                  // Cierra todas las ventanas abiertas y regresa "hasta que" llegue
                  // a la primera pantalla (Window 1), limpiando el historial.
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                icon: const Icon(Icons.home), // Icono de casita.
                label: const Text('Volver al Inicio'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
