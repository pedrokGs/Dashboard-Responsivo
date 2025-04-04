# Dashboard Responsivo

Este é um aplicativo Flutter que funciona como um gerenciador de tarefas. Ele permite que os usuários adicionem, visualizem, filtrem e alterem o status de tarefas. O design é responsivo e inclui gradientes e animações para uma experiência visual agradável.

## Funcionalidades

### 1. **Adicionar Tarefas**
- Os usuários podem adicionar novas tarefas com título e descrição.
- As tarefas são criadas com um status inicial de "Pendente".
- A funcionalidade está implementada na tela de [`AdicionarTarefa`](lib/adicionarTarefa.dart).

### 2. **Visualizar Detalhes da Tarefa**
- Os usuários podem visualizar os detalhes de uma tarefa, incluindo título, descrição e status.
- É possível alterar o status da tarefa entre "Concluída" e "Pendente" diretamente na tela de detalhes.
- A funcionalidade está implementada na tela de [`DetalhesTarefa`](lib/detalhesTarefa.dart).

### 3. **Listagem de Tarefas**
- As tarefas são exibidas em uma lista na tela inicial.
- É possível filtrar as tarefas por:
  - Todas
  - Pendentes
  - Concluídas
- A funcionalidade está implementada na tela de [`HomePage`](lib/homePage.dart).

### 4. **Tarefa Mais Recente**
- A tela inicial exibe a tarefa mais recente adicionada, com um botão para visualizar seus detalhes.
- A funcionalidade está implementada na tela de [`HomePage`](lib/homePage.dart).

### 5. **Infográfico**
- Uma tela de infográfico exibe estatísticas sobre as tarefas, como:
  - Total de tarefas
  - Tarefas concluídas
  - Tarefas pendentes
  - Tarefas em progresso
  - Tarefas fora do prazo
- A funcionalidade está implementada na tela de [`Infografico`](lib/infografico.dart).

### 6. **Navegação**
- O aplicativo possui um menu lateral (drawer) para acessar rapidamente as opções de filtro e adicionar tarefas.
- Um `BottomNavigationBar` permite alternar entre a tela inicial e a tela de infográfico.

## Estrutura do Projeto

- **`lib/main.dart`**: Arquivo principal que inicializa o aplicativo.
- **`lib/homePage.dart`**: Tela inicial com listagem de tarefas e filtros.
- **`lib/adicionarTarefa.dart`**: Tela para adicionar novas tarefas.
- **`lib/detalhesTarefa.dart`**: Tela para visualizar e alterar detalhes de uma tarefa.
- **`lib/infografico.dart`**: Tela de infográfico com estatísticas das tarefas.
- **`lib/Tarefa.dart`**: Modelo de dados para representar uma tarefa.

## Como Executar

1. Certifique-se de ter o Flutter instalado. [Guia de instalação do Flutter](https://docs.flutter.dev/get-started/install).
2. Clone este repositório:
   ```bash
   git clone <URL_DO_REPOSITORIO>