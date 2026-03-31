import 'package:flutter/material.dart';
// Importamos el archivo de la segunda ventana para habilitar la navegación.
import 'window_2.dart';

class Window1 extends StatelessWidget {
  // El constructor utiliza super.key para ayudar a Flutter a manejar el widget en el árbol de elementos.
  const Window1({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold: Proporciona la estructura visual básica (lienzo) de esta pantalla.
    return Scaffold(
      // STACK: Widget que permite colocar elementos uno encima de otro (como capas de cebolla).
      body: Stack(
        // fit: StackFit.expand hace que los hijos del Stack ocupen todo el tamaño de la pantalla.
        fit: StackFit.expand,
        children: [
          // CAPA 1 (Fondo): Imagen cargada desde una URL de internet.
          Image.network(
            'https://images.unsplash.com/photo-1462331940025-496dfbfc7564?q=80',
            // BoxFit.cover asegura que la imagen cubra toda la pantalla sin deformarse.
            fit: BoxFit.cover,
          ),

          // CAPA 2 (Filtro): Un Container con color hexadecimal para oscurecer el fondo.
          // El color 0x8a651c8b es un tono púrpura con transparencia (8a) para dar estilo.
          Container(color: const Color(0x8a651c8b)),

          // CAPA 3 (Interfaz): Usamos una Column para organizar los textos y el botón verticalmente.
          Column(
            // Centra todos los elementos hijos en el medio de la pantalla (eje vertical).
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Texto principal con estilo personalizado.
              const Text(
                'ZOÉ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  letterSpacing:
                      10, // Espaciado entre letras para un look moderno.
                ),
              ),
              // Subtítulo con color cian neón.
              const Text(
                'UNIVERSO MUSICAL',
                style: TextStyle(color: Colors.cyanAccent, fontSize: 16),
              ),

              // SIZEDBOX: Crea un espacio vacío de 40 píxeles para separar el texto del botón.
              const SizedBox(height: 40),

              // Botón de acción para entrar a la aplicación.
              ElevatedButton(
                onPressed: () {
                  // NAVEGACIÓN: Navigator.push añade la Window2 a la "pila" de pantallas.
                  // MaterialPageRoute gestiona la animación de transición entre ventanas.
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Window2()),
                  );
                },
                child: const Text('ENTRAR'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
