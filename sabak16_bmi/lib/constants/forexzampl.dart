// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class WeihgtAge extends StatefulWidget {
//   const WeihgtAge({super.key});

//   @override
//   State<WeihgtAge> createState() => _WeihgtAgeState();
// }

// class _WeihgtAgeState extends State<WeihgtAge> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("gh"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             const Text("60"),
//             FloatingActionButton(onPressed: (){})
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ForButton extends StatefulWidget {
  const ForButton({super.key});

  @override
  State<ForButton> createState() => _ForButtonState();
}

class _ForButtonState extends State<ForButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('FloatingActionButton')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Floating(),
            Floating(),
          ],
        ),
      ),
    );
  }
}

class Floating extends StatelessWidget {
  const Floating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
    );
  }
}
