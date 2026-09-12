import 'filme.dart';
class Serie extends Filme{
  int quantidadeTemporadas;
  int episodiosPorTemporada;

  Serie({
    required super.titulo,
    required super.duracao,
    required super.nota,
    required super.dataLancamento,
    required super.genero,

    required this.quantidadeTemporadas,
    required this.episodiosPorTemporada
  });
}