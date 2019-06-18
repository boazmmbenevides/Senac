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
### Widgets utilizados

Para o aplicativo da calculadora simples, utilizamos os seguintes widgets:
- Container
  - Serve como uma "caixa" para outro widget. Ele pode ter um parametro child. Ele pode ter tambem margem interna (padding).
- TextField
  - Campos de texto permitem que os usuários digitem texto em um aplicativo.
- SizedBox
  - Serve como espaçamento entre um Widget e outro. Pode ser espaçamento vertical e horizontal.
- DropdownButton
  - É um botão que, quando pressionando, lista as opções criadas.
- RaisedButton
  - Serve como um botão.
- Column
  - É um Widget de layout para colocar outros Widgets um embaixo do outro. Aceita um pârametro children (são vários widgets).
- Center
  - Serve para centralizar o Widget que for passado como filho (child).
  
  ### Eventos (funções) utilizadas 
  
- onChanged:
  - Foi utilizado na DropdownButton para atualizar a operação escolhida.
- onPressed:
  - Foi utilizado no RaisedButton para realizar o cálculo.
- setState:
  - Utilizado **SEMPRE** que a tela precisou ser *atualizada*
