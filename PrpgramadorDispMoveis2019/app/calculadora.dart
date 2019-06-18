
import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MeuAppState();
  }
}

class _MeuAppState extends State<MeuApp> {
  double numero1;
  double numero2;
  String operacao;
  String resultado = "";

  void calcular(double numero1, double numero2, String operacao) {
    double resposta;

    if (operacao == "+") {
      resposta = numero1 + numero2;
    } else if (operacao == "-") {
      resposta = numero1 = numero2;
    } else if (operacao == "/") {
      resposta = numero1 / numero2;
    } else if (operacao == "*") {
      resposta = numero1 * numero2;
    } else {
      resposta = 0;
    }

    resultado = "O resultdo da conta é: $resposta";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Minha calculadora",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Minha Calculadora",
              style: TextStyle(color: Colors.limeAccent),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(color: Colors.deepPurple),
          child: Column(
            children: <Widget>[
              Text(
                "Faça seus calculos!",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Digite o primeiro número",
                    labelStyle:
                        //Muda o tamanho da letra,Muda a cor do texto.
                        TextStyle(fontSize: 18, color: Colors.limeAccent),
                    focusedBorder: UnderlineInputBorder(
                        //Muda a cor da linha do campo:
                        borderSide: BorderSide(color: Colors.limeAccent))),
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
                onChanged: (textoDigitado) {
                  setState(() {
                    numero1 = double.parse(textoDigitado);
                    print(numero1);
                  });
                },
              ),
              Text("numero1"),
              TextField(
                decoration: InputDecoration(
                    labelText: "Digite o segundo número",
                    labelStyle:
                        TextStyle(fontSize: 18, color: Colors.limeAccent),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.limeAccent))),
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
                onChanged: (textoDigitado) {
                  setState(() {
                    numero2 = double.parse(textoDigitado);
                    print(numero2);
                  });
                },
              ),
              Text("numero2"),
              DropdownButton<String>(
                items: [
                  DropdownMenuItem(
                    child: Text("+"),
                    value: "+",
                  ),
                  DropdownMenuItem(
                    child: Text("-"),
                    value: "-",
                  ),
                  DropdownMenuItem(
                    child: Text("*"),
                    value: "*",
                  ),
                  DropdownMenuItem(
                    child: Text("/"),
                    value: "/",
                  ),
                ],
                onChanged: (valor) {
                  operacao = valor;
                  setState(() {});
                },
                hint: Text("Escolha uma operação"),
                style: TextStyle(fontSize: 18, color: Colors.black),
                value: operacao,
              ),
              SizedBox(height: 15.0),
              RaisedButton(
                onPressed: () {
                  calcular(numero1, numero2, operacao);
                  setState(() {});
                },
                child: Text("Calcular"),
              ),
              SizedBox(height: 30.0),
              Text(resultado),
            ],
          ),
        ),
      ),
    );
  }
}
