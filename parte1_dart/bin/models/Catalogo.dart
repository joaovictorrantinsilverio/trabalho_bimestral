import 'ObraAudiovisual.dart';

class Catalogo {
  String nome;
  List<ObraAudiovisual> _obras = [];

  Catalogo({
    required this.nome,
  });

  void adicionar(ObraAudiovisual obra) {
    _obras.add(obra);
  }

  // Getter da quantidade de itens da lista
  int get quantidadeTotal => _obras.length;

  //Getter dos elementos da lista
  List<ObraAudiovisual> get obras => List.unmodifiable(_obras);
}