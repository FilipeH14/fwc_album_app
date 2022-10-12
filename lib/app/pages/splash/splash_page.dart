import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/styles/button_styles.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title: const Text('splash page')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              style: ButtonStyles.i.primaryButton,
              child: const Text('salvar'),
              onPressed: () {},
            ),
            OutlinedButton(
              style: ButtonStyles.i.yellowOutlinedButton,
              child: const Text('cadastrar'),
              onPressed: () {},
            ),
            const TextField(),
          ],
        ),
      ),
    );
  }
}
