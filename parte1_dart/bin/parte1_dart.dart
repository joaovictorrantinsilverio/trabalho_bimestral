import 'package:parte1_dart/parte1_dart.dart' as parte1_dart;

import 'models/filme.dart';

void main() {
  
  final filme = Filme(
    titulo: 'O Grande Exemplo',
    duracao: 120,
    nota: 8.7,
    dataLancamento: DateTime(2014, 11, 6),
    genero: 'Ficção científica',
  );

  print('===== [1] ENTIDADE PRINCIPAL =====');
  print(
    'Filme: ${filme.titulo} | '
    '${filme.duracao} minutos | '
    'Nota: ${filme.nota} | '
    '${filme.dataLancamento.year}',
  );
}
