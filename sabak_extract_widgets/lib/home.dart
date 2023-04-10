import 'package:flutter/material.dart';
import 'package:sabak_extract_widgets/components/custombutton.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Center(child: Text("Components and contants")),
      
      ),
    
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 80,
            ),
            Image.network("https://avatars.mds.yandex.net/i?id=0f9daeaa75607f5d2202214a867b3d90bb6d2687-8373849-images-thumbs&n=13", 
            height: 250, width: 250,
            ),
             const CustomButtom(text: 'menin telephonum', icon: Icons.phone, ),
            const SizedBox(height: 20,),
             const CustomButtom(icon: Icons.mail, text: "amail adress",
             ),
            const SizedBox(
              height: 15,
            ),
         
          ],
        ),
      ),
    );
  }
}

