import 'package:baitafome/dao/database.dart';
import 'package:baitafome/models/type.dart';
import 'package:baitafome/dao/type_dao.dart';

void onCreateDB() {
  // GERA OS TIPOS DE RECEITAS NO BANCO DE DADOS
  generatedTypes(); 
}

void generatedTypes() async {
  final database = await $FloorAppDatabase.databaseBuilder('baitafome.db').build();
  final typeDao = database.typeDao;
  final type1 = Type(id: 1, description: 'Sobremesas');
  final type2 = Type(id: 2, description: 'Bolos');
  final type3 = Type(id: 3, description: 'Carnes');
  final type4 = Type(id: 4, description: 'Peixes');
  final type5 = Type(id: 5, description: 'Tortas');
  final type6 = Type(id: 6, description: 'Massas');
  final type7 = Type(id: 7, description: 'Sucos');
  final type8 = Type(id: 8, description: 'Saladas');
  final type9 = Type(id: 9, description: 'Pães');
  final type10 = Type(id: 10, description: 'Sopas');
  final type11 = Type(id: 11, description: 'Frangos');
  final type12 = Type(id: 12, description: 'Outros');

  await typeDao.insertType(type1);
  await typeDao.insertType(type2);
  await typeDao.insertType(type3);
  await typeDao.insertType(type4);
  await typeDao.insertType(type5);
  await typeDao.insertType(type6);
  await typeDao.insertType(type7);
  await typeDao.insertType(type8);
  await typeDao.insertType(type9);
  await typeDao.insertType(type10);
  await typeDao.insertType(type11);
  await typeDao.insertType(type12);
}