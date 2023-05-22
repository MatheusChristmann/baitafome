import 'package:flutter/material.dart';

import '../controllers/typecontroller.dart';

//Controller for Recipe Name
final TextEditingController nameController = TextEditingController();

//Controller for Recipe Description
final TextEditingController descriptionController = TextEditingController();

//Controller for Recipe Type from Type object
final TextEditingController typeController = TextEditingController();
//final TypeController typeController = TypeController(Type);

void addRecipe(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Digite os parâmetros da receita'),
        content: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Parâmetro Name'),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Parâmetro description'),
            ),
            TextField(
              controller: typeController,
              decoration: InputDecoration(labelText: 'Parâmetro type'),
            ),
          ],
        ),
        actions: [
          TextButton(
            child: Text('Sair'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text('Salvar'),
            onPressed: () {
              // Aqui você pode salvar os parâmetros nos controladores
              // ou executar outras ações necessárias
              // por exemplo, você pode exibir os valores no console:
              print('Parâmetro 1: ${nameController.text}');
              print('Parâmetro 2: ${descriptionController.text}');
              print('Parâmetro 3: ${typeController.text}');

              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
