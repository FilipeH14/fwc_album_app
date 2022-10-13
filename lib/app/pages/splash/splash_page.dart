import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/core/ui/widgets/button.dart';
import 'package:fwc_album_app/app/core/ui/widgets/rounded_button.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Button(
              style: ButtonStyles.i.primaryButton,
              labelStyle: context.textStyles.textPrimaryFontBold,
              label: 'salvar',
              onPressed: () {},
            ),
            RoundedButton(
              icon: Icons.add,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
