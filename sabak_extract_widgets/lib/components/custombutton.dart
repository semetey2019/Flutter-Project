import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.icon, required this.text, });
  final IconData? icon; final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300 ,
       child: ElevatedButton(
        onPressed: (){},
         child: Row(
          children: [
            Icon(icon),
       const SizedBox(
        width: 40,
      ), 
       Text(text, style: const TextStyle(
        color: Colors.red, fontSize: 20,  ), 
          ),
         ],
    
        ),
      ),
    );
  }
}