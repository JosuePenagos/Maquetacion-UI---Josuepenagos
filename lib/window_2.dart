import 'package:flutter/material.dart';
import 'window_3.dart'; // Importante para que reconozca Window3

class Window2 extends StatelessWidget {
  const Window2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discografía de Zoé'),
        backgroundColor: Color(0xff9a12a6),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          // Cambiamos 'año' por 'anio' para evitar errores
          _albumCard(context, 'Memo Rex Commander', '2006'),
          _albumCard(context, 'Reptilectric', '2008'),
          _albumCard(context, 'Programatón', '2013'),
          _albumCard(context, 'Aztlán', '2018'),
        ],
      ),
    );
  }

  // Widget personalizado para las tarjetas
  Widget _albumCard(BuildContext context, String titulo, String anio) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: const Icon(Icons.album, color: Colors.purple),
        title: Text(titulo),
        subtitle: Text('Lanzamiento: $anio'), // Aquí usamos 'anio' sin la eñe
        trailing: const Icon(Icons.arrow_forward_ios, size: 15),
        onTap: () {
          // Navegación a la ventana 3
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Window3()),
          );
        },
      ),
    );
  }
}
