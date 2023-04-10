
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabak10_end_forloop/model.dart';
import 'package:sabak10_end_forloop/second.page.dart';
import 'package:sabak10_end_forloop/theme/appText_style.dart';
import 'package:google_fonts/google_fonts.dart';

List studentter = <Student> [
  daniyar, 
  dinara,
  xanzada,
  aybek,
  mirbek,
   ];

class LoginPage extends StatefulWidget {
   const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _name;
  String? _gmail;
  bool? test = false;
  void controlNameEmail (String name, String email) {
    int index=0; 
    for(final student in studentter) {
      
      if(name == student.name && email == student.email) {
        test = true;
        index++;
          Navigator.push(
            context, MaterialPageRoute(builder: (context) =>
               Ekinchibet(student: student.name, ),
          ),
          );
        break;
      }else{
       if(index == studentter.length) {}
        // index=1  studentter =5
      if (test == false) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:  Text("Сиздин атыныз же почтаныз туура эмес!"),
          ),
         );
        } else{
          continue;
        }
      }
     }
   }
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       centerTitle: true,
       title: Text("loginpage".toUpperCase(),
        style: const TextStyle(color: Colors.deepPurple,
        ),
       ),
      ),
    
      body: Center(
        child:  Container(
          constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
             image: DecorationImage(image: 
               NetworkImage("https://avatars.mds.yandex.net/i?id=8f5e052b240d129d8e116482813caa07675926b7-8181844-images-thumbs&n=13"),
                fit: BoxFit.cover
                ),
               ),
           child: Padding(
             padding: const EdgeInsets.only(
              left: 30, 
              top: 20, 
              right: 30, 
              bottom: 40
              ),
             child: Container(
               width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
              color: const Color.fromARGB(0, 149, 101, 231).withOpacity(0.4),
              borderRadius: BorderRadius.circular(20),
             ),
             child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                 children: const [
                  FlutterLogo(size: 100, 
                   style: FlutterLogoStyle.horizontal, 
                    textColor: Colors.green,
                  ),
                ],
              ),
              
              const Icon(
              Icons.favorite,
              color: Colors.green,
              size: 24.0,
             ),
               Text("Welcome to", style: GoogleFonts.fleurDeLeah(
                textStyle: const TextStyle(color: Colors.black), fontSize: 30,
               ),
               ),
              const Text("FREEDOM finance!", style: TextStyle(fontSize: 35,
                fontWeight: FontWeight.w500
             ),
             ),
              Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
               child: TextField(
                 onChanged: (String value) {
                   _name = value;
                    print("Валуе иштеди $value");
                    print(" Валлуе иштеди $_name");
            },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                   labelText: "Name",
                ),
              ),
             ),
                     const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: TextField(onChanged: (String value) {
                   _gmail = value;
                     print("Валуе иштеди $value");
                     print(" Валлуе иштеди $_gmail");
                },
             decoration: const InputDecoration(
               border: OutlineInputBorder(),
                labelText: "Gmail",
                ),
              ),
             ),
                     const SizedBox(height: 15,),
               ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   minimumSize:  const Size(190, 50),
           ),
               onPressed: () {
               controlNameEmail(_name!, _gmail!);
           },
                child: const Text("Login"),
               ),
              ]
             ),  
           ),
         ),   
        ),
      ),
    );
  }
}
