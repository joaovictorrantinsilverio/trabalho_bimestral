import 'package:flutter/material.dart';
import 'models/Catalogo.dart';
import 'models/Filme.dart';
import 'models/Serie.dart';
import 'models/Documentario.dart';
import 'screens/home_page.dart';

void main() {
  
  final catalogo = Catalogo(
    nome: 'Catálogo de Filmes',
  );

  catalogo.adicionar(
    Filme(
      titulo: 'Homem de Metal',
      duracao: 120,
      nota: 8.7,
      dataLancamento: DateTime(2014, 11, 6),
      genero: 'Ação/Super-Heróis',
    ),
  );

  catalogo.adicionar(
    Serie(
      titulo: 'The Bois',
      duracaoEpisodios: 55,
      nota: 8.3,
      dataLancamento: DateTime(2019, 7, 26),
      genero: 'Ação/Super-heróis',
      quantidadeTemporadas: 5,
      episodiosPorTemporada: 8,
    ),
  );

  catalogo.adicionar(
    Documentario(
      titulo: 'Assassino Americano',
      duracao: 200,
      nota: 9.3,
      dataLancamento: DateTime(2020),
      genero: 'Documentário',
      temaAbordado: 'Assassinato em série',
    ),
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
        catalogo: catalogo,
      ),
    ),
  );
}