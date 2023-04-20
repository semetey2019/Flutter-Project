import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.conteinerdinTexti,
    required this.conteinerdinTexti2,
    required this.icon,
    required this.image,
    required this.colordunAty,
  });

  final String conteinerdinTexti, conteinerdinTexti2;
  final IconData icon;
  final String image;
  final Color colordunAty;
  // final String sized;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 170, top: 15),
      height: 100,
      width: double.infinity,
      color: colordunAty,
      child: Row(
        children: [
          Column(
            children: [
              Text(
                conteinerdinTexti,
                style: TextStyle(fontSize: 20, color: Colors.orangeAccent),
              ),
              Text(conteinerdinTexti2,
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 3, 28, 4))),
              Icon(icon),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Image.network(
                image,
                height: 50,
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
