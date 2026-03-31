import 'package:flutter/material.dart';
// Importamos la ventana final para completar el flujo de navegación.
import 'window_4.dart';

class Window3 extends StatelessWidget {
  const Window3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar: Título de la pantalla que indica la acción actual.
      appBar: AppBar(title: const Text('Reproduciendo Now')),

      // COLUMN: Organiza los elementos de la interfaz de arriba hacia abajo.
      body: Column(
        children: [
          // Espacio inicial para separar el AppBar de la carátula.
          const SizedBox(height: 30),

          // CONTAINER (Carátula del álbum):
          // Es el widget principal de diseño en esta pantalla.
          Container(
            margin: const EdgeInsets.symmetric(
                horizontal: 40), // Margen a los lados.
            height: 300,
            // BoxDecoration: Permite personalizar el fondo, bordes y sombras del contenedor.
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  20), // Esquinas redondeadas (Radio de 20).
              boxShadow: [
                BoxShadow(
                  // withValues(alpha: 0.5): Nueva forma de Flutter para dar transparencia al color.
                  color: Colors.cyan.withValues(alpha: 0.5),
                  blurRadius: 15, // Qué tan difuminada se ve la sombra.
                )
              ],
              // DecorationImage: Coloca la imagen dentro del contenedor respetando los bordes redondeados.
              image: const DecorationImage(
                image: NetworkImage(
                    'https://m.media-amazon.com/images/I/71YV-N9S7EL._SL1200_.jpg'),
                fit: BoxFit
                    .cover, // La imagen se ajusta para llenar todo el espacio del cuadro.
              ),
            ),
          ),

          const SizedBox(height: 30), // Espacio entre carátula y texto.

          // Títulos de la canción y la banda.
          const Text('Vía Láctea',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const Text('Zoé - Memo Rex Commander',
              style: TextStyle(color: Colors.grey)),

          const SizedBox(height: 40),

          // ROW (Controles de audio):
          // Organiza los iconos de reproducción de forma horizontal.
          const Row(
            // spaceEvenly: Distribuye los iconos con el mismo espacio entre ellos.
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.skip_previous, size: 40), // Botón atrás.
              Icon(Icons.play_circle_fill,
                  size: 70, color: Colors.cyan), // Botón Play (destacado).
              Icon(Icons.skip_next, size: 40), // Botón adelante.
            ],
          ),

          // SPACER: Widget "elástico" que ocupa todo el espacio vacío restante.
          // Sirve para empujar el botón "Ver Perfil" hacia la parte inferior de la pantalla.
          const Spacer(),

          // Botón para navegar a la última pantalla.
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Window4()));
            },
            child: const Text('Ver Perfil del Fan'),
          ),

          const SizedBox(height: 40), // Margen final inferior.
        ],
      ),
    );
  }
}
