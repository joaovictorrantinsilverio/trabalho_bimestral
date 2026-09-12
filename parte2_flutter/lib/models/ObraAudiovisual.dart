class ObraAudiovisual {
  String titulo;
  double nota;
  DateTime dataLancamento;
  String genero;

  ObraAudiovisual({
    required this.titulo,
    required this.nota,
    required this.dataLancamento,
    this.genero = 'Não informado',
  });

  void mostrarInfo() {
    print(
      'Título: $titulo | '
      '$nota | '
      '$dataLancamento | '
      '$genero');
  }
}