#Exemplo 1 - Widgets Básicos

Método principal(main) e método necessário para "inflar" o App (runApp), mostrar os widgets na tela.
Foi também usado o import no pacote/biblioteca material.dart, que é respónsavel
por nos fornecer os recursos,atributos de cada widget(Cor de um objeto, tamanho, alinhamento, etc)

```dart
import 'package:flutter/material.dart';

void main() {
  runApp();
  }
  ```
  
  ## Trocar a cor de fundo da tela
  
  Foi usado um "container"(Center) e nele foi definido a cor de fundo.
  
  import 'package:flutter/material.dart';
  
  ```dart
  void main() {
    runApp(
      new Material(
          color: Colors.purple,
      ), //Material
    );
   }
   ````
   
   ## Colocando um texto no centro da tela
   
   ```dart
 void main() {
  runApp(
      new Material(
          color: Colors.purple,
          child: new Center(
            child: new Text("Hello World",
              textDirection: TextDirection.ltr,
             ), //Text
            ), //Center
           ), //Material
         );
        }
   ```
   
   ##Formatando o texto, 
    -tamanho do texto(font-size), 
    -cor do texto(color):
    
   **style: new TextStyle(fontSize: 40,
                        color: Colors.lime,
     ),**

   
   ```dart
   void main() {
    runApp(
      new Material(
          color: Colors.purple,
          child: new Center(
            child: new Text("Hello World",
              textDirection: TextDirection.ltr,
              style: new TextStyle(fontSize: 40,
                color: Colors.lime),
            ),// TextStyle
          ),//Text
      ),//Material
  ); //RunnApp
}
   ```
