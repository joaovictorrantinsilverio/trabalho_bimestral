import 'package:flutter/material.dart';
import '../models/ObraAudiovisual.dart';
import '../models/filme.dart';
import '../models/Serie.dart';

class DetalheObra extends StatelessWidget {
  final ObraAudiovisual obraAudiovisual;

  DetalheObra({
    super.key,
    required this.obraAudiovisual
  });

  @override
  Widget build(BuildContext context) {
    final obraAtual = obraAudiovisual;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          obraAudiovisual.titulo,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,      // Ocupa toda a tela disponível
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 6,
                offset: Offset(3, 3)
              )
            ],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,      // Ocupa apenas a altura necessária de acordo com o conteúdo
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nota: ${obraAudiovisual.nota}'),
              Text(
                'Lançamento: '
                '${obraAtual.dataLancamento.day.toString().padLeft(2, '0')}/'
               '${obraAtual.dataLancamento.month.toString().padLeft(2, '0')}/'
               '${obraAtual.dataLancamento.year}'
              ),
              Text('Gênero: ${obraAudiovisual.genero}'),

              if (obraAtual is Filme) ...[
                Text('Duração: ${obraAtual.duracao}')
              ],

              if (obraAtual is Serie) ...[
               Text('Quantidade de Temporadas: ${obraAtual.quantidadeTemporadas}'),
                Text('Episodios por temporada: ${obraAtual.episodiosPorTemporada}'),
               Text('Duração dos episodios: ${obraAtual.duracaoEpisodios} minutos')
             ],
           ],
          ),
        ),

      ),
    );
  }
}