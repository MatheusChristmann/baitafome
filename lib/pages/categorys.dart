import 'package:baitafome/pages/recipes.dart';
import 'package:flutter/material.dart';

class Categorys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        padding: const EdgeInsets.all(40),
        crossAxisSpacing: 40,
        mainAxisSpacing: 40,
        crossAxisCount: 6,
        childAspectRatio: 1.13,
        children: [
          Card(
            elevation: 0,
            color: Color.fromRGBO(235, 230, 210, 1),
          ),

          // Categoria Sobremesas
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipePage(typeId: 1), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
              child: Column(
                children: [
                    Expanded(child: Image.asset('assets/categorys/sobremesas.png')),
                    Text('Sobremesas',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )
              ),

          ),
          //
          // Categoria Bolos
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecipePage(typeId: 2,),
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/bolos.png')),
                    Text('Bolos',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )),
          ),
          //
          // Categoria Carnes
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  RecipePage(typeId: 3),
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/carnes.png')),
                    Text('Carnes',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )),
          ),

          // Categoria Peixes
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecipePage(typeId: 4), 
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/peixes.png')),
                    Text('Peixes',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )),
          ),
          //
          // Categoria Vazia
          //
          Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
            ),
          //
          // Categoria Vazia
          //
          Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
            ),
          //
          // Categoria Tortas
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecipePage(typeId: 5), 
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/tortas.png')),
                    Text('Tortas',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )),
          ),
          //
          // Categoria Massas
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecipePage(typeId: 6), 
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/massas.png')),
                    Text('Massas',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )),
          ),
          //
          // Categoria Sucos
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecipePage(typeId: 7), 
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/sucos.png')),
                    Text('Sucos',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )),
          ),
          //
          // Categoria Saladas
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecipePage(typeId: 8),
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/saladas.png')),
                    Text('Saladas',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )),
          ),
          //
          // Categoria Vazia
          //
          Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
            ),
          //
          // Categoria Vazia
          //
          Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
            ),
          //
          // Categoria Pães
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecipePage(typeId: 9), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/paes.png')),
                    Text('Pães',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )),
          ),
          //
          // Categoria Sopas
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecipePage(typeId: 10,),
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/sopas.png')),
                    Text('Sopas',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )),
          ),
          //
          // Categoria Frangos
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecipePage(typeId: 11), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/frangos.png')),
                    Text('Frangos',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )),
          ),
          //
          // Categoria Outros
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecipePage(typeId: 12), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [Expanded(child: Image.asset('assets/icon.png')),
                  Text('Outros',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )
              ),
          ),
          //
          // Categoria Vazia
          //
          Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
            ),
        ],
      ),
    );
  }
}
