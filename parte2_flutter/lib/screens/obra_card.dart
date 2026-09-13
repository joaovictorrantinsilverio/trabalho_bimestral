import 'package:flutter/material.dart';
import '../models/ObraAudiovisual.dart';

class ObraCard extends StatelessWidget {
  final ObraAudiovisual obraAudiovisual;

  const ObraCard({
    super.key,
    required this.obraAudiovisual,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,               // cor vai AQUI dentro, nunca no Container direto
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 6,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            obraAudiovisual.titulo,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text('Gênero: ${obraAudiovisual.genero}'),
          Text('Nota: ${obraAudiovisual.nota}'),
          Text('Lançamento: ${obraAudiovisual.dataLancamento.year}'),
        ],
      ),
    );
  }
}