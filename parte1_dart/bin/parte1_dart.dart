import 'models/filme.dart';
import 'models/Serie.dart';
import 'models/Documentario.dart';
import 'models/Catalogo.dart';

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

  // List catálogo
  final catalogo = Catalogo(
  nome: 'Meus favoritos',
  );

  catalogo.adicionar(filme);
  catalogo.adicionar(serie);
  catalogo.adicionar(doc);

  //Saida de dados
  print('===== [1] ENTIDADE PRINCIPAL =====');
  filme.mostrarInfo();

  print("");
  print('===== [2] HERANÇA =====');
  serie.mostrarInfo();

  doc.mostrarInfo();
  
  print('');
  print('===== [3] COMPOSIÇÃO =====');
  print(
    'Catálogo "${catalogo.nome}" contém ${catalogo.quantidadeTotal} obras:',
  );

  for (final obra in catalogo.obras) {
    print('  - ${obra.titulo}');
  }

  print('===== [4] ENCAPSULAMENTO =====');
  catalogo.adicionar(Filme(
    titulo: 'Lentos e Calmos',
    duracao: 106,
    nota: 4.9,
    genero: 'Ação/Aventura',
    dataLancamento: DateTime(2001, 9, 11)
  ));

  print('Total de Obras Audiovisuais: ${catalogo.quantidadeTotal}');
}
