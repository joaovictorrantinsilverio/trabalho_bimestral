import 'models/filme.dart';
import 'models/Serie.dart';
import 'models/Documentario.dart';

void main() {
  
  // Filmes
  final filme = Filme(
    titulo: 'Homem de Metal',
    duracao: 120,
    nota: 8.7,
    dataLancamento: DateTime(2014, 11, 6),
    genero: 'Ação/Super-Heróis'
  );

  // Séries
  final serie = Serie(
    titulo: 'The Bois',
    duracaoEpisodios: 55,
    nota: 8.3,
    dataLancamento: DateTime(2019, 7, 26),
    genero: 'Ação/Super-heróis',
    quantidadeTemporadas: 5,
    episodiosPorTemporada: 8
  ); 

  // Documentários
  final doc = Documentario(
    titulo: 'Assasino Americano',
    duracao: 200,
    nota: 9.3,
    dataLancamento: DateTime(2020),
    genero: 'Documentario',
    temaAbordado: 'Assasinato em série'
  );

  print('===== [1] ENTIDADE PRINCIPAL =====');
  print(
    'Filme: ${filme.titulo} | '
    '${filme.duracao} minutos | '
    'Nota: ${filme.nota} | '
    '${filme.dataLancamento.year} | '
    '${filme.genero}'
  );

  print("");
  print('===== [2] HERANÇA =====');
  print(
    'Série: ${serie.titulo} | '
    '${serie.duracaoEpisodios} minutos | '
    '${serie.nota} | '
    '${serie.dataLancamento.year} | '
    '${serie.genero} | '
    'Temporadas: ${serie.quantidadeTemporadas} | '
    'Episódios por temporada: ${serie.episodiosPorTemporada}'
  );

  print(
    'Documentário: ${doc.titulo} | '
    '${doc.duracao} | '
    '${doc.nota} | '
    '${doc.dataLancamento.year} | '
    '${doc.genero} | '
    '${doc.temaAbordado}'
  );

}
