import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/core/ui/widgets/button.dart';
import 'package:fwc_album_app/app/pages/home/widgets/status_tile.dart';
import 'package:fwc_album_app/app/pages/home/widgets/sticker_percent_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.colors.primary,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: LayoutBuilder(
          builder: (_, constrains) => ConstrainedBox(
            constraints: BoxConstraints(minHeight: constrains.maxHeight),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 35),
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('assets/images/bola.png',
                          fit: BoxFit.cover),
                    ),
                    const StickerPercentWidget(percent: 60),
                    const SizedBox(height: 20),
                    Text(
                      '45 figurinhas',
                      style: context.textStyles.titleWhite,
                    ),
                    const SizedBox(height: 10),
                    StatusTile(
                      icon: Image.asset('assets/images/all_icon.png'),
                      label: 'Todas',
                      value: 34,
                    ),
                    const SizedBox(height: 20),
                    StatusTile(
                      icon: Image.asset('assets/images/missing_icon.png'),
                      label: 'Faltando',
                      value: 500,
                    ),
                    const SizedBox(height: 20),
                    StatusTile(
                      icon: Image.asset('assets/images/repeated_icon.png'),
                      label: 'Repetidas',
                      value: 30,
                    ),
                    const SizedBox(height: 20),
                    Button(
                      width: MediaQuery.of(context).size.width * .9,
                      outline: true,
                      style: context.buttonStyles.yellowOutlinedButton,
                      labelStyle: context.textStyles.textSecondaryFontExtraBold
                          .copyWith(color: context.colors.yellow),
                      label: 'Minhas Figurinhas',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
