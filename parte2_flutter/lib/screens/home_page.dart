import 'package:flutter/material.dart';
import 'package:parte2_flutter/screens/detalhe_obra_page.dart';

import '../models/Catalogo.dart';
import 'obra_card.dart';
import 'cadastro_page.dart';

class HomePage extends StatefulWidget {
  final Catalogo catalogo;

  const HomePage({
    super.key,
    required this.catalogo,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Catalogo get catalogo => widget.catalogo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF16213E),
      appBar: AppBar(
        backgroundColor: Color(0xFF16213E),
        title: const Text('Catálogo de Filmes'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),

        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.white
              ),

            onPressed: () async {
              // "await" espera a CadastroPage fechar (o pop) antes de continuar.
              final novoFilme = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CadastroPage(catalogo: catalogo),
                ),
              );

              if (novoFilme != null) {
                setState(() {
                  catalogo.adicionar(novoFilme);
                });
              }

              // Força a HomePage a reconstruir e ler a lista atualizada do catalogo.
              setState(() {});
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
                color: Colors.white
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