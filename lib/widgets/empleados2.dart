import 'package:ecommerce/models/empleados.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class empleados2 extends StatelessWidget {
  const empleados2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(empleados.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(empleados[index].perfil),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " ${empleados[index].nombre}",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text("Empleados"),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(
                        Ionicons.star,
                        color: Colors.yellow[700],
                        size: 18,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 4, right: 6),
                        child: Text(
                          "4.0",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text("150 Reseñas")
                    ],
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
