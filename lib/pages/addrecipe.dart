import 'package:flutter/material.dart';
import 'package:baitafome/dao/type_dao.dart';
import 'package:baitafome/models/type.dart';
import 'package:baitafome/main.dart';
import 'package:baitafome/pages/mainpage.dart';
import '../dao/database.dart';

class AddRecipeDialog extends StatefulWidget {
  @override
  _AddRecipeDialogState createState() => _AddRecipeDialogState();
}

class _AddRecipeDialogState extends State<AddRecipeDialog> {
  List<Type>? allowedTypes;

  // Controller para o nome da receita
  final TextEditingController nameController = TextEditingController();

// Controller para a descrição da receita
  final TextEditingController descriptionController = TextEditingController();

// Objeto Type selecionado
  Type? selectedType;

  @override
  void initState() {
    super.initState();
    loadAllowedTypes();
  }

  Future<void> loadAllowedTypes() async {
    final database =
        await $FloorAppDatabase.databaseBuilder('baitafome.db').build();
    final typeDao = database.typeDao;
    allowedTypes = await typeDao.findAllTypes();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (allowedTypes == null) {
      return CircularProgressIndicator();
    }

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
          DropdownButton<Type>(
            hint: Text('Selecione um tipo'),
            value: selectedType,
            onChanged: (Type? value) {
              setState(() {
                selectedType = value;
              });
            },
            items: allowedTypes!.map((Type type) {
              return DropdownMenuItem<Type>(
                value: type,
                child: Text(type.description),
              );
            }).toList(),
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
            if (selectedType != null &&
                descriptionController != '' &&
                nameController != '') {
              print('Parâmetro 1: ${nameController.text}');
              print('Parâmetro 2: ${descriptionController.text}');
              print('Parâmetro 3: ${selectedType!.id}');
            } else {
              print('Falta algum parametro');
            }
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

void addRecipe(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AddRecipeDialog();
    },
  );
}
