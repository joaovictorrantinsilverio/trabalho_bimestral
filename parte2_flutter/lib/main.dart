import 'package:flutter/material.dart';
import 'models/Catalogo.dart';
import 'models/Filme.dart';
import 'models/Serie.dart';
import 'screens/home_page.dart';

void main() {
  
  final catalogo = Catalogo(
    nome: 'Catálogo de Filmes',
  );

  catalogo.adicionar(
    Filme(
      titulo: 'Homem de Metal',
      duracao: 120,
      nota: 7.9,
      dataLancamento: DateTime(2008, 05, 02),
      genero: 'Ação/Super-Herói',
    ),
  );

  catalogo.adicionar(
    Serie(
      titulo: 'Breaking Good',
      duracaoEpisodios: 55,
      nota: 9.5,
      dataLancamento: DateTime(2008, 01, 20),
      genero: 'Drama/Suspense',
      quantidadeTemporadas: 5,
      episodiosPorTemporada: 8,
    ),
  );

  catalogo.adicionar(
    Filme(
      titulo: 'O Grande Exemplo',
      duracao: 152,
      nota: 9.0,
      dataLancamento: DateTime(2008, 07, 18),
      genero: 'Ação',
    ),
  );

  catalogo.adicionar(
    Serie(
      titulo: 'O Grande Exemplo 2',
      duracaoEpisodios: 50,
      nota: 8.7,
      dataLancamento: DateTime(2009, 07, 15),
      genero: 'Ficção/Suspense',
      quantidadeTemporadas: 5,
      episodiosPorTemporada: 10,
    ),
  );

  catalogo.adicionar(
    Filme(
      titulo: 'O Grande Exemplo - O Fim',
      duracao: 152,
      nota: 8.7,
      dataLancamento: DateTime(2010, 11, 07),
      genero: 'Ficção Científica',
    ),
  );

  catalogo.adicionar(
    Serie(
      titulo: 'O Grande Exemplo - O Retorno',
      duracaoEpisodios: 50,
      nota: 8.5,
      dataLancamento: DateTime(2011, 10, 10),
      genero: 'Ação/Drama',
      quantidadeTemporadas: 5,
      episodiosPorTemporada: 10,
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