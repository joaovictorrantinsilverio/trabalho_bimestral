import 'package:flutter/material.dart';

import '../models/Catalogo.dart';
import 'obra_card.dart';

class HomePage extends StatelessWidget {
  final Catalogo catalogo;

  const HomePage({
    super.key,
    required this.catalogo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Filmes'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),

            child: Text(
              'Total: ${catalogo.quantidadeTotal}',

              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: catalogo.obras.length,

              itemBuilder: (context, index) {
                final obra = catalogo.obras[index];

                return ObraCard(
                  obraAudiovisual: obra,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}