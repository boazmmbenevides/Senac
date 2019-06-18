## Criação do primeiro App em Flutter

Para criar o aplicativo além da função main(), precisamos de uma classe que herde StatefulWidget ou StatelessWidget.
- StatelessWidget:
  - É uma página que não pode ser atualizada. Ou seja, não tem "estado".
- StatefulWidget:
  - É uma página que pode sofrer atualizações. Utilizamos para jogar valores em tela e lidar com ações do usuário.
  
**Exemplo de Stateless Widget** :snowflake:
```dart
  class ClasseSemEstado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```
  
**Exemplo de Stateful Widget** :zap:
  
```dart
class ClasseComEstadoo extends StatefulWidget {
  @override
  _ClasseComEstadooState createState() => _ClasseComEstadooState();
}

class _ClasseComEstadooState extends State<ClasseComEstadoo> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}  
```
