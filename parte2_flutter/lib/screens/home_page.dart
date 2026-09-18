import 'package:flutter/material.dart';
import 'package:parte2_flutter/screens/detalhe_obra_page.dart';

import '../models/Catalogo.dart';
import 'obra_card.dart';
import 'cadastro_page.dart';

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

        actions: [
          IconButton(
            icon: const Icon(Icons.add),

            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CadastroPage(
                    catalogo: catalogo,
            ),
          ),
        );
      },
    ),
  ],
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

                return GestureDetector(  //Detecta quando o usuário toca
                  onTap: () {  // Função que roda quando o toque acontece
                    Navigator.of(context).push(  // Pega o controle de navegação do app e empilha uma nova tela por cima
                      MaterialPageRoute(  // Define qual tela vai ser empilhada
                        builder: (context) => DetalheObra(obraAudiovisual: obra),
                      ),
                    );
                  },
                  child: ObraCard(
                    obraAudiovisual: obra,
                  ),
                );

              },
            ),
          ),

        ],
      ),
    );
  }
}