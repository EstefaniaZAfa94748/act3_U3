import 'package:ecommerce/widgets/extras.dart';
import 'package:ecommerce/widgets/empleados2.dart';
import 'package:ecommerce/widgets/cuadro.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hola, Estefania"),
            Text(
              "Buscas una pizza?",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.notifications_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.search_outline),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children: [
          const cuadro(),
          const SizedBox(height: 20),
          Text(
            "Extras",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 15),
          const extras(),
          const SizedBox(height: 25),
          Text(
            "Empleados",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 15),
          const empleados2(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            activeIcon: Icon(Ionicons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.calendar_outline),
            activeIcon: Icon(Ionicons.calendar),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.chatbubble_ellipses_outline),
            label: "Inicio",
            activeIcon: Icon(Ionicons.chatbubble_ellipses),
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            activeIcon: Icon(Ionicons.person),
            label: "Inicio",
          ),
        ],
      ),
    );
  }
}
