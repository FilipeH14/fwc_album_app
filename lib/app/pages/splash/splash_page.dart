import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/helpers/loader.dart';
import 'package:fwc_album_app/app/core/ui/helpers/messages.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/core/ui/widgets/button.dart';
import 'package:fwc_album_app/app/core/ui/widgets/rounded_button.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with Loader<SplashPage>, Messages<SplashPage> {
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
              onPressed: () async {
                showLoader();
                await Future.delayed(const Duration(seconds: 2));
                hideLoader();
              },
            ),
            OutlinedButton(
              style: ButtonStyles.i.yellowOutlinedButton,
              child: const Text('cadastrar'),
              onPressed: () => showError('Erro no botão outline'),
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
