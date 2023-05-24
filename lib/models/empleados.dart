// ignore_for_file: public_member_api_docs, sort_constructors_first
class EMP {
  final String nombre;
  final String posicion;
  final int promedio;
  final int resenas;
  final String perfil;
  EMP({
    required this.nombre,
    required this.posicion,
    required this.promedio,
    required this.resenas,
    required this.perfil,
  });
}

final List<EMP> empleados = [
  EMP(
    nombre: "Jose Duran",
    posicion: "Gerente",
    promedio: 0,
    resenas: 0,
    perfil: "assets/hombre.jpg",
  ),
  EMP(
    nombre: "Mariana Guzman",
    posicion: "Jefa",
    promedio: 0,
    resenas: 0,
    perfil: "assets/mujer.jpg",
  ),
  EMP(
    nombre: "Pepe Franco",
    posicion: "Empleado",
    promedio: 2,
    resenas: 0,
    perfil: "assets/hombre2.png",
  ),
  EMP(
    nombre: "Estefania Perez",
    posicion: "Empleada",
    promedio: 2,
    resenas: 0,
    perfil: "assets/mujer2.jpg",
  ),
];
