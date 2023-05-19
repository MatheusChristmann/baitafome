import 'package:baitafome/pages/configpage.dart';
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
          //
          // Categoria Vazia
          //
          GestureDetector(
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) =>
            //           ConfigPage(), // alterar a pagina de destino
            //     ),
            //   );
            // },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
            ),
          ),
          //
          // Categoria Sobremesas
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ConfigPage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(
                        child: Image.asset('assets/categorys/sobremesas.png'))
                  ],
                )),
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
                      ConfigPage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/bolos.png'))
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
                      ConfigPage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/carnes.png'))
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
                      ConfigPage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/peixes.png'))
                  ],
                )),
          ),
          //
          // Categoria Vazia
          //
          GestureDetector(
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) =>
            //           ConfigPage(), // alterar a pagina de destino
            //     ),
            //   );
            // },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
            ),
          ),
          //
          // Categoria Vazia
          //
          GestureDetector(
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) =>
            //           ConfigPage(), // alterar a pagina de destino
            //     ),
            //   );
            // },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
            ),
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
                      ConfigPage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/tortas.png'))
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
                      ConfigPage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/massas.png'))
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
                      ConfigPage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/sucos.png'))
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
                      ConfigPage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/saladas.png'))
                  ],
                )),
          ),
          //
          // Categoria Vazia
          //
          GestureDetector(
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) =>
            //           ConfigPage(), // alterar a pagina de destino
            //     ),
            //   );
            // },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
            ),
          ),
          //
          // Categoria Vazia
          //
          GestureDetector(
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) =>
            //           ConfigPage(), // alterar a pagina de destino
            //     ),
            //   );
            // },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
            ),
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
                      ConfigPage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/paes.png'))
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
                      ConfigPage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/sopas.png'))
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
                      ConfigPage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/frangos.png'))
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
                      ConfigPage(), // alterar a pagina de destino
                ),
              );
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [Expanded(child: Image.asset('assets/icon.png'))],
                )),
          ),
          //
          // Categoria Vazia
          //
          GestureDetector(
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) =>
            //           ConfigPage(), // alterar a pagina de destino
            //     ),
            //   );
            // },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
            ),
          ),
        ],
      ),
    );
  }
}
