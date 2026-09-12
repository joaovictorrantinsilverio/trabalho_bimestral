import 'models/filme.dart';
import 'models/Serie.dart';
import 'models/Documentario.dart';

void main() {
  
  //Filmes
  final filme = Filme(
    titulo: 'Homem de Metal',
    duracao: 120,
    nota: 8.7,
    dataLancamento: DateTime(2014, 11, 6),
    genero: 'Ação/Super-Heróis',
  );

  final filme2 = Filme(
    titulo: 'Aranha-Homem',
    duracao: 136,
    nota: 9.6,
    dataLancamento: DateTime(2012, 7, 3),
    genero: 'Ação/Super-Heróis',
  );

  //Séries
  final serie = Serie (
    titulo: 'The Bois',
    duracao: 55,
    nota: 7.9,
    dataLancamento: DateTime(2019, 07, 26),
    genero: 'Ação/Super-Heroís',
    quantidadeTemporadas: 5,
    episodiosPorTemporada: 8
  );

  // Documentários
  final documentario = Documentario (
    titulo: 'American Murder',
    duracao: 120,
    nota: 8.7,
    dataLancamento: DateTime(2019, 6, 9),
    genero: 'Crimes Reais',
    temaAbordado: 'Assasinatos'
  );

  print('===== [1] ENTIDADE PRINCIPAL =====');
  print(
    'Filme: ${filme.titulo} | '
    '${filme.duracao} minutos | '
    'Nota: ${filme.nota} | '
    '${filme.dataLancamento.year}',
  );

  print(
    'Filme: ${filme2.titulo} | '
    '${filme2.duracao} minutos | '
    'Nota: ${filme2.nota} | '
    '${filme2.dataLancamento.year}',
  );

  print("");

  print('===== [2] HERANÇA =====');
  print(
    'Série: ${serie.titulo} | '
    '${serie.duracao} minutos | '
    'Nota: ${serie.nota} | '
    '${serie.dataLancamento.year} | '
    'Temporadas: ${serie.quantidadeTemporadas} | '
    'Episódios por Temporada: ${serie.episodiosPorTemporada}'
  );

  print(
    'Documentário: ${documentario.titulo} | '
    '${documentario.duracao} minutos | '
    'Nota: ${documentario.nota} | '
    '${documentario.dataLancamento.year} | '
    'Tema: ${documentario.temaAbordado}'
    
  );
}
