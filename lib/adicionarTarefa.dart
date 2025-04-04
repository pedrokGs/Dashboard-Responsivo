import 'dart:math';

import 'package:flutter/material.dart';
import 'Tarefa.dart';

class AdicionarTarefa extends StatefulWidget {
  @override
  _AdicionarTarefaState createState() => _AdicionarTarefaState();
}

class _AdicionarTarefaState extends State<AdicionarTarefa> {
  final _formKey = GlobalKey<FormState>();

  String _titulo = "";
  String _descricao = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Adicionar Tarefa",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Color(0xFF2196F3), // Azul Primário
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // Fundo sutil do cinza claro para o branco
            colors: [Color(0xFFEEEEEE), Color(0xFFFFFFFF)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Cabeçalho com título
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      // Gradiente do Azul Primário ao Roxo Primário
                      colors: [Color(0xFF2196F3), Color(0xFF9C27B0)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Text(
                    "Nova Tarefa",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFFFFF), // Branco
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                // Campo para o Título
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF), // Fundo branco
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Título",
                      labelStyle: TextStyle(color: Color(0xFF9C27B0)), // Roxo Primário
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Por favor, insira o título";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _titulo = value!;
                    },
                  ),
                ),
                SizedBox(height: 20),
                // Campo para a Descrição
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF), // Fundo branco
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Descrição",
                      labelStyle: TextStyle(color: Color(0xFF9C27B0)), // Roxo Primário
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 3,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Por favor, insira a descrição";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _descricao = value!;
                    },
                  ),
                ),
                SizedBox(height: 30),
                // Botão para Adicionar Tarefa
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      // Gradiente do Roxo Claro ao Azul Claro
                      colors: [Color(0xFFBA68C8), Color(0xFF64B5F6)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        Tarefa novaTarefa = Tarefa(
                          id: Random().nextInt(100000),
                          titulo: _titulo,
                          descricao: _descricao,
                          concluida: false,
                        );
                        Navigator.pop(context, novaTarefa);
                      }
                    },
                    child: Text(
                      "Adicionar Tarefa",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF), // Branco
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
