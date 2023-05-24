// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class extras extends StatelessWidget {
  const extras({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<IconPersonalizado> customIcons = [
      IconPersonalizado(nombre: "Aderezos", icon: 'assets/img11.jpg'),
      IconPersonalizado(
          nombre: "Pan de Ajo", icon: 'assets/italian chesse.png'),
      IconPersonalizado(nombre: "Alitas", icon: 'assets/boneless.jpg'),
      IconPersonalizado(nombre: "Bebidas", icon: 'assets/7up.png'),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //index: indice del arreglo de la linea 9
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                customIcons[index].icon,
              ),
            ),
            const SizedBox(height: 6),
            //index: indice del arreglo de la linea 9
            Text(customIcons[index].nombre)
          ],
        );
      }),
    );
  }
}

class IconPersonalizado {
  final String nombre;
  final String icon;
  IconPersonalizado({
    required this.nombre,
    required this.icon,
  });
}
