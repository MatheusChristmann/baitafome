import 'package:baitafome/pages/recipe.dart';
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
                  builder: (context) => RecipePage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
              child: Column(
                children: [
                    Expanded(child: Image.asset('assets/categorys/sobremesas.png')),
                    Text('Sobremesas'),
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
                      RecipePage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/bolos.png')),
                    Text('Bolos'),
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
                      RecipePage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/carnes.png')),
                    Text('Carnes'),
                  ],
                )),
          ),
          //
          // Categoria Peixes
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecipePage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/peixes.png')),
                    Text('Peixes'),
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
                      RecipePage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/tortas.png')),
                    Text('Tortas'),
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
                      RecipePage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/massas.png')),
                    Text('Massas'),
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
                      RecipePage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/sucos.png')),
                    Text('Sucos'),
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
                      RecipePage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/saladas.png')),
                    Text('Saladas'),
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
                      RecipePage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/paes.png')),
                    Text('Pães'),
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
                      RecipePage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/sopas.png')),
                    Text('Sopas'),
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
                      RecipePage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/frangos.png')),
                    Text('Frangos'),
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
                      RecipePage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [Expanded(child: Image.asset('assets/icon.png')),
                  Text('Outros'),
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
