import 'package:flutter/material.dart';
import 'package:projetocafeteria/background_app.dart';
import 'package:projetocafeteria/componente_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MENU",
        ),
        centerTitle: true,
      ),
      body: Background_app(
          child: Center(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Componente_home(),
                SizedBox(
                  width: 20,
                ),
                Componente_home(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Componente_home(),
                SizedBox(
                  width: 20,
                ),
                Componente_home(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Componente_home(),
                SizedBox(
                  width: 20,
                ),
                Componente_home(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Componente_home(),
                SizedBox(
                  width: 20,
                ),
                Componente_home(),
              ],
            ),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "favoritos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "carrinho",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "conta",
          ),
        ],
      ),
    );
  }
}
