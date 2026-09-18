import 'package:flutter/material.dart';
import 'models/Catalogo.dart';
import 'models/Filme.dart';
import 'models/Serie.dart';
import 'screens/home_page.dart';

void main() {
  
  final catalogo = Catalogo(
    nome: 'Catálogo de Filmes',
  );

  // Filmes
  catalogo.adicionar(
    Filme(
      titulo: 'Homem de Cobre',
      duracao: 120,
      nota: 7.9,
      dataLancamento: DateTime(2008, 05, 02),
      genero: 'Ação/Super-Herói',
    ),
  );

  catalogo.adicionar(
    Filme(
      titulo: 'Conception',
      duracao: 148,
      nota: 6.7,
      dataLancamento: DateTime(2010, 8, 6),
      genero: 'Ficção Científica/Ação',
    )
  );

  catalogo.adicionar(
    Filme(
      titulo: 'Titânicas',
      duracao: 110,
      nota: 8.5,
      dataLancamento: DateTime(2012, 6, 23),
      genero: 'Romance/Drama',
    )
  );

  // Séries
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
    Serie(
      titulo: 'Stranger Wings',
      duracaoEpisodios: 42,
      nota: 8.8,
      dataLancamento: DateTime(2016, 7, 15),
      genero: 'Ficção Científica/Suspense',
      quantidadeTemporadas: 5,
      episodiosPorTemporada: 42,
    ),
  );

  catalogo.adicionar(
    Serie(
      titulo: 'Game of Phones',
      duracaoEpisodios: 50,
      nota: 7.3,
      dataLancamento: DateTime(2011, 4, 17),
      genero: 'Fantasia/Drama',
      quantidadeTemporadas: 8,
      episodiosPorTemporada: 73,
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