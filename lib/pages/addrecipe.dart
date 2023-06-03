import 'package:flutter/material.dart';
import 'package:baitafome/dao/type_dao.dart';
import 'package:baitafome/models/type.dart';
import 'package:baitafome/main.dart';
import 'package:baitafome/pages/mainpage.dart';
import '../dao/database.dart';
import 'package:flutter/services.dart';

class AddRecipeDialog extends StatefulWidget {
  @override
  _AddRecipeDialogState createState() => _AddRecipeDialogState();
}

class _AddRecipeDialogState extends State<AddRecipeDialog> {
  List<Type>? allowedTypes;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController ingredientsController = TextEditingController();

// Objeto Type selecionado
  Type? selectedType;

  @override
  void initState() {
    super.initState();
    loadAllowedTypes();
  }

  Future<void> loadAllowedTypes() async {
    final database = await $FloorAppDatabase.databaseBuilder('baitafome.db').build();
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
      title: Text('Digite as informações da Receita:'),
      content:  Container(
        width: 540, 
        height: 600, 
        child: Column(
        children: [

          TextField(
            controller: nameController,
            maxLength: 30,          
            maxLines: 1,
            decoration: InputDecoration(
              labelText: 'Nome',
              floatingLabelBehavior: FloatingLabelBehavior.always, 
              counter: SizedBox.shrink(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),

          SizedBox(height: 20),

          TextField(
            controller: descriptionController,
            maxLines: 2,
            maxLength: 100,           
            decoration: InputDecoration(
              labelText: 'Descrição',              
              floatingLabelBehavior: FloatingLabelBehavior.always, // Mantém o rótulo fixo na parte superior
              counter: SizedBox.shrink(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              ),              
            ),
            inputFormatters: [
              FilteringTextInputFormatter.deny('\n'), // Bloqueia a entrada da tecla "Enter"
            ],
          ),

          SizedBox(height: 20),
      
          SizedBox(
            width: double.infinity,            
            child: DropdownButtonFormField<Type>(
              isExpanded: true, 
              icon: const Icon(Icons.receipt),
              hint: Text('Escolha o Tipo da Receita'),
              decoration: InputDecoration(
                label: Text('Tipo da Receita'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                )
              ),
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
            )
          ),

          SizedBox(height: 20),

          TextField(
            controller: ingredientsController,
            maxLines: 10,
            maxLength: 1000,            
            decoration: InputDecoration(
              labelText: 'Ingredientes / Modo de Preparo',              
              floatingLabelBehavior: FloatingLabelBehavior.always,
              counter: SizedBox.shrink(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              ),              
            ),
          ),
        ],
      ),
      ),
      actions: [
        TextButton(
          child: Text('Sair'),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('Salvar'),
          onPressed: () {
            if (selectedType != null && descriptionController.text.isNotEmpty && nameController.text.isNotEmpty) { 
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Receita adicionada com sucesso.'),
                  backgroundColor: Colors.green,
                ),
              );
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
