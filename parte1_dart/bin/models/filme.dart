class Filme {
  String titulo;
  int duracao;
  double nota;
  DateTime dataLancamento;
  String genero;

  Filme({
    required this.titulo,
    required this.duracao,
    required this.nota,
    required this.dataLancamento,
    this.genero = 'Não informado',
  });
}