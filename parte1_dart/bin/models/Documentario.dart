import 'filme.dart';

class Documentario extends Filme {
  String temaAbordado;

  Documentario({
    required super.titulo,
    required super.duracao,
    required super.nota,
    required super.dataLancamento,
    required super.genero,

    required this.temaAbordado
  });
}