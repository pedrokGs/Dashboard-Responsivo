import 'package:dashboard_responsivo/adicionarTarefa.dart';
import 'package:dashboard_responsivo/detalhesTarefa.dart';
import 'package:flutter/material.dart';

import 'Tarefa.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String filtro = 'todas';
  final List<Tarefa> tarefas = [
    Tarefa(
      id: 1,
      titulo: 'Tarefa 1',
      descricao: 'Colocar comida para o cachorro',
    ),
    Tarefa(id: 2, titulo: 'Tarefa 2', descricao: 'Fazer lição de casa'),
    Tarefa(id: 3, titulo: 'Tarefa 3', descricao: 'Arrumar a casa'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xFFFAF9F6),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Color(0xFF9C27B0)),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),

        title: IconButton(
          icon: Icon(Icons.notifications, color: Color(0xFF9C27B0)),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Color(0xFF9C27B0)),
            onPressed: () {},
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // ListTile(
            //   leading: Icon(Icons.home),
            //   title: Text('Home'),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            // ListTile(
            //   leading: Icon(Icons.task),
            //   title: Text('Minhas Tarefas'),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            // ListTile(
            //   leading: Icon(Icons.settings),
            //   title: Text('Configurações'),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                setState(() {
                  filtro = 'pendentes';
                });
                Navigator.pop(context);
              },
              child: Container(
                width: 20,
                height: 120,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent, width: 5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.purple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/image/pendentes.png', height: 80),
                      Text(
                        "Pendentes",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  filtro = 'concluidas';
                });
                Navigator.pop(context);
              },
              child: Container(
                width: 20,
                height: 120,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent, width: 5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.purple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/image/concluidas.png', height: 90),
                      Text(
                        "Concluídas",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () async {
                final novaTarefa = await Navigator.push<Tarefa>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdicionarTarefa(),
                  ),
                );

                if (novaTarefa != null) {
                  setState(() {
                    tarefas.add(novaTarefa);
                  });
                }
              },
              child: Container(
                width: 20,
                height: 120,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent, width: 5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.purple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                          'assets/image/adicionarTarefa.png', height: 90),
                      Text(
                        "Adicionar \n Tarefa",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFAF9F6), Color(0xFFfaf0e6)],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.95,
                height: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent, width: 5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.purple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Text(
                    "Bem vindo, usuário!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.45,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent, width: 5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [Colors.blue, Colors.purple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),

                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              "Tarefa mais recente",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              tarefas.last.titulo,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            tarefas.last.concluida
                                ? Text(
                              "Tarefa Concluída!",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                                : Text(
                              "Tarefa Pendente!",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.red[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) =>
                                        DetalhesTarefa(
                                          tarefa: tarefas.last,
                                        ),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Color(0xFF2196F3),
                              ),
                              child: Text(
                                "Visualizar",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.45,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent, width: 5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [Colors.blue, Colors.purple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              "A fazer",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            if (tarefas.any((t) => !t.concluida)) ...[
                              Text(
                                tarefas
                                    .firstWhere((t) => !t.concluida)
                                    .titulo,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 62),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) =>
                                          DetalhesTarefa(
                                            tarefa: tarefas.firstWhere(
                                                  (t) => !t.concluida,
                                            ),
                                          ),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  backgroundColor: Color(0xFF2196F3),
                                ),
                                child: Text(
                                  "Visualizar",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ] else
                              ...[
                                Text(
                                  "Nenhuma tarefa pendente!",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.95,
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.5,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent, width: 5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.purple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),

                  child: Builder(
                    builder: (context) {
                      final List<Tarefa> tarefasFiltradas =
                      filtro == 'pendentes'
                          ? tarefas.where((t) => !t.concluida).toList()
                          : filtro == 'concluidas'
                          ? tarefas.where((t) => t.concluida).toList()
                          : tarefas;

                      return Expanded(
                        child: ListView.builder(
                          itemCount: tarefasFiltradas.length,
                          itemBuilder: (context, index) {
                            return Card(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              child: ListTile(
                                leading: CircleAvatar(
                                  child:
                                  tarefasFiltradas[index].concluida
                                      ? Icon(Icons.done)
                                      : Icon(Icons.close),
                                ),
                                title: Text(tarefasFiltradas[index].titulo),
                                trailing: Icon(Icons.chevron_right),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) =>
                                          DetalhesTarefa(
                                            tarefa: tarefasFiltradas[index],
                                          ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}