import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class PiedraPapelTijeras extends StatefulWidget {
  const PiedraPapelTijeras({super.key});

  @override
  State<PiedraPapelTijeras> createState() => _PiedraPapelTijerasState();
}

String result = 'Empecemos';
int counterPC = 0;
int counterUser = 0;

String userSelection = '';
String pcSelection = '';

class _PiedraPapelTijerasState extends State<PiedraPapelTijeras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Piedra-Papel-Tijeras')),
        leading: const Icon(Icons.arrow_back),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                counterPC = 0;
                counterUser = 0;
                result = 'Empecemos';
              });
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('PC', style: TextStyle(fontSize: 20)),
            Text('$counterPC',
                style: const TextStyle(
                    fontSize: 120, fontWeight: FontWeight.w100)),
            const SizedBox(height: 50),
            const Text('Usuario', style: TextStyle(fontSize: 20)),
            Text('$counterUser',
                style: const TextStyle(
                    fontSize: 120, fontWeight: FontWeight.w100)),
            Text(
                userSelection == '' || pcSelection == ''
                    ? ''
                    : '$userSelection vs $pcSelection',
                style: const TextStyle(fontSize: 16)),
            Text(result,
                style: TextStyle(
                    fontSize: 26,
                    color: result == 'ganaste'
                        ? Colors.lightGreen
                        : result == 'perdiste'
                            ? Colors.red
                            : Colors.lightBlueAccent)),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.cut,
            onPressed: () {
              setState(() {
                result = piedraPapelTijeras('tijeras');
              });
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.description,
            onPressed: () {
              setState(() {
                result = piedraPapelTijeras('papel');
              });
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.monitor_weight,
            onPressed: () {
              setState(() {
                result = piedraPapelTijeras('piedra');
              });
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    required this.icon,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}

String piedraPapelTijeras(String seleccionUsuario) {
  List<String> opciones = ["piedra", "papel", "tijeras"];
  Random random = Random();
  int indiceAleatorio = random.nextInt(opciones.length);
  String seleccion = opciones[indiceAleatorio];
  userSelection = seleccionUsuario;
  pcSelection = seleccion;
  if (seleccion == seleccionUsuario) {
    return "empate";
  }
  if (seleccion == "piedra" && seleccionUsuario == "papel" ||
      seleccion == "tijeras" && seleccionUsuario == "piedra" ||
      seleccion == "papel" && seleccionUsuario == "tijeras") {
    counterUser++;
    return "ganaste";
  } else {
    counterPC++;
    return "perdiste";
  }
}
