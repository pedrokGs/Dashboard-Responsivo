class Tarefa {
  final int id;
  final String titulo;
  final String descricao;
  bool concluida;

  Tarefa({
    required this.id,
    required this.titulo,
    required this.descricao,
    this.concluida = false,
  });
}