import 'package:Login_page/second.page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "loginpage".toUpperCase(),
          style: const TextStyle(
            color: Colors.deepPurple,
          ),
        ),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://avatars.mds.yandex.net/i?id=09f26bae7e7055f3fb31833cf15da30637f6c0a2-9150989-images-thumbs&n=13"),
                fit: BoxFit.cover),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(
                  size: 100,
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
            const Text("Welcome to"),
            const Text(
              "FREEDOM finance!",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name",
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Gmail",
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(190, 50),
              ),
              onPressed: () {},
              child: const Text("Login"),
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Ekinchibet(),
            ),
          );
        },
        backgroundColor: Colors.lightGreen,
        child: const Text(">>"),
      ),
    );
  }
}
