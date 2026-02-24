// Arquivo principal da aplicação

// Sempre começa com o void main

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main() {
  runApp(
    MaterialApp(
      home: //estrutura máxima de janela
      Scaffold(
        appBar: AppBar(title: Text("Meu primeiro App!")),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              Fluttertoast.showToast(
                msg: "Hello World!",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.CENTER);
            },
            child: Text("Não Entre em Pânico!")),
        ),
      ),
    ));
}
