import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.conteinerdinTexti,
    required this.conteinerdinTexti2,
    required this.icon,
    required this.image,
  });
  final String conteinerdinTexti, conteinerdinTexti2;
  final IconData icon;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        children: [
          Text(conteinerdinTexti),
          Text(conteinerdinTexti2),
          Icon(icon),
          Container(
            height: 20,
            width: 20,
          ),
          Row(
            children: [
              Image.network(image),
            ],
          ),
        ],
      ),
    );
  }
}
