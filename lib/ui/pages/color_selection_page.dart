import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../../utils/color_utils.dart';
import '../widgets/color_palette.dart';

class ColorSelectionPage extends StatelessWidget {
  const ColorSelectionPage({Key? key}) : super(key: key);

  void showDialog() {
    Get.dialog(const AlertDialog(
      title: Text('Flutter'),
      content: Text('Dialog'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color palette app'),
          actions: [
            IconButton(onPressed: showDialog, icon: Icon(Icons.info_outline))
          ],
        ),
        // https://colorhunt.co/
        body: (Center(
          child: SingleChildScrollView(
            child: Column(
              children: [ColorPalette(
                baseColor1: 'F6F7C1',
                callback1: showColor,
                baseColor2: 'C1AEFC',
                callback2: showColor,
                baseColor3: 'D1FFF3',
                callback3: showColor,
                baseColor4: 'BEF0CB',
                callback4: showColor,
              ), ColorPalette(
                baseColor1: '20262E',
                callback1: showColor,
                baseColor2: 'E9E8E8',
                callback2: showColor,
                baseColor3: 'CD5888',
                callback3: showColor,
                baseColor4: '913175',
                callback4: showColor,
              ),ColorPalette(
                baseColor1: '5D3891',
                callback1: showColor,
                baseColor2: 'F5F5F5',
                callback2: showColor,
                baseColor3: 'E8E2E2',
                callback3: showColor,
                baseColor4: 'F99417',
                callback4: showColor,
              ), ColorPalette(
                baseColor1: 'F2CD5C',
                callback1: showColor,
                baseColor2: '400E32',
                callback2: showColor,
                baseColor3: 'A61F69',
                callback3: showColor,
                baseColor4: 'F2921D',
                callback4: showColor,
              ),ColorPalette(
                baseColor1: '03C988',
                callback1: showColor,
                baseColor2: '13005A',
                callback2: showColor,
                baseColor3: '00337C',
                callback3: showColor,
                baseColor4: '1C82AD',
                callback4: showColor,
              ), ColorPalette(
                baseColor1: 'EBC7E6',
                callback1: showColor,
                baseColor2: '645CBB',
                callback2: showColor,
                baseColor3: 'A084DC',
                callback3: showColor,
                baseColor4: 'BFACE2',
                callback4: showColor,
              ),
              ],
            )
          ),
          
          
          /*child: Text(
              "SingleChildScrollView -> Column -> [ColorPalette, ColorPalette] "),*/
        )));
  }

  // está es la función que será llamada con cada click a un ColorPalette
  void showColor(String value) {
    Clipboard.setData(ClipboardData(text: value));
    Get.snackbar(
      'Color palette',
      'Valor copiado',
      backgroundColor: ColorUtils.FromHex(value),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
