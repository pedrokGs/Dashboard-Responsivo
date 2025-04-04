import 'package:flutter/material.dart';
import 'Tarefa.dart';

class DetalhesTarefa extends StatefulWidget {
  final Tarefa tarefa;

  DetalhesTarefa({required this.tarefa});

  @override
  _DetalhesTarefaState createState() => _DetalhesTarefaState();
}

class _DetalhesTarefaState extends State<DetalhesTarefa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detalhes da Tarefa",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Color(0xFF2196F3), // Azul Primário
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFEEEEEE), Color(0xFFFFFFFF)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [Color(0xFF2196F3), Color(0xFF9C27B0)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Text(
                  widget.tarefa.titulo,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Descrição",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF9C27B0),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.tarefa.descricao,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF424242),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Container para o status
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [Color(0xFFBA68C8), Color(0xFF64B5F6)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "Status: ${widget.tarefa.concluida ? "Concluída ✅" : "Pendente ⏳"}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (!widget.tarefa.concluida) {
                            widget.tarefa.concluida = true;
                          } else {
                            widget.tarefa.concluida = false;
                          }
                        });
                      },
                      child: Text(
                        "Toque para alterar",
                        style: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
