import 'package:baitafome/pages/recipes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RecipePage(typeId: 1),),);
            },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
              child: Column(
                children: [
                  Expanded(child: Image.asset('assets/categorys/sobremesas.png')),
                  Text(AppLocalizations.of(context)!.categorys_label_sobremesas,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => RecipePage(typeId: 2,),),);
            },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
              child: Column(
                children: [
                  Expanded(child: Image.asset('assets/categorys/bolos.png')),
                  Text(AppLocalizations.of(context)!.categorys_label_bolos,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => RecipePage(typeId: 3),),);
            },
            child: Card(
                elevation: 0,
                color: Color.fromRGBO(235, 230, 210, 1),
                child: Column(
                  children: [
                    Expanded(child: Image.asset('assets/categorys/carnes.png')),
                    Text(AppLocalizations.of(context)!.categorys_label_carnes,
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RecipePage(typeId: 4), ),);
            },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
              child: Column(
                children: [
                  Expanded(child: Image.asset('assets/categorys/peixes.png')),
                  Text(AppLocalizations.of(context)!.categorys_label_peixes,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
            ),
          ),

          Card(
            elevation: 0,
            color: Color.fromRGBO(235, 230, 210, 1),
          ),
          Card(
            elevation: 0,
            color: Color.fromRGBO(235, 230, 210, 1),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => RecipePage(typeId: 5), ),);
            },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
              child: Column(
                children: [
                  Expanded(child: Image.asset('assets/categorys/tortas.png')),
                  Text(AppLocalizations.of(context)!.categorys_label_tortas,
                     style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => RecipePage(typeId: 6), ),);
            },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
              child: Column(
                children: [
                  Expanded(child: Image.asset('assets/categorys/massas.png')),
                  Text(AppLocalizations.of(context)!.categorys_label_massas,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => RecipePage(typeId: 7), ),);
            },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
              child: Column(
                children: [
                  Expanded(child: Image.asset('assets/categorys/sucos.png')),
                  Text(AppLocalizations.of(context)!.categorys_label_sucos,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => RecipePage(typeId: 8),),);
            },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
              child: Column(
                children: [
                  Expanded(child: Image.asset('assets/categorys/saladas.png')),
                  Text(AppLocalizations.of(context)!.categorys_label_saladas,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
            ),
          ),

          Card(
            elevation: 0,
            color: Color.fromRGBO(235, 230, 210, 1),
          ),
          Card(
            elevation: 0,
            color: Color.fromRGBO(235, 230, 210, 1),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => RecipePage(typeId: 9), ),);
            },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
              child: Column(
                children: [
                  Expanded(child: Image.asset('assets/categorys/paes.png')),
                  Text(AppLocalizations.of(context)!.categorys_label_paes,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => RecipePage(typeId: 10,),),);
            },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
              child: Column(
                children: [
                  Expanded(child: Image.asset('assets/categorys/sopas.png')),
                  Text(AppLocalizations.of(context)!.categorys_label_sopas,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => RecipePage(typeId: 11),),);
            },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
              child: Column(
                children: [
                  Expanded(child: Image.asset('assets/categorys/frangos.png')),
                  Text(AppLocalizations.of(context)!.categorys_label_frangos,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute( builder: (context) => RecipePage(typeId: 12),),);
            },
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(235, 230, 210, 1),
              child: Column(
                children: [Expanded(child: Image.asset('assets/icon.png')),
                Text(AppLocalizations.of(context)!.categorys_label_outros,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
            ),
          ),

          Card(
            elevation: 0,
            color: Color.fromRGBO(235, 230, 210, 1),
          ),
        ],
      ),
    );
  }
}
