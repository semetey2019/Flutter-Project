import 'package:flutter/material.dart';


class Ekinchibet extends StatelessWidget {
  const Ekinchibet({super.key,  required this.student});
 final String  student;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        title:  const Center(child: 
        Text('Wonderful Life...',
         style: TextStyle(
          decorationColor: Colors.green
          ),
         ),
       ),
    ),
    
     body: Center(
        child:  Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(image: 
            NetworkImage("https://avatars.mds.yandex.net/i?id=489b1fb41d79f883c0cba1b1aa70b16d7da9e853-4230863-images-thumbs&n=13"),
             fit: BoxFit.cover
             ),
           ),
        child: Center(child: Text(student),
        ),
       ),
          
      ),
        
    );
    }
   }