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
        /*floatingActionButton: FloatingActionButton(
          onPressed: () => {print('Hello world')},
          child: const Icon(Icons.plus_one)
        ),*/
        body: (Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ColorPalette(
                  baseColor1: 'F6F7C1',
                  baseColor2: 'C1AEFC',
                  baseColor3: 'D1FFF3',
                  baseColor4: 'BEF0CB',
                  callback: showColor),
                ColorPalette(
                  baseColor1: '20262E',
                  baseColor2: 'E9E8E8',
                  baseColor3: 'CD5888',
                  baseColor4: '913175',
                  callback: showColor),
                ColorPalette(
                  baseColor1: '5D3891',
                  baseColor2: 'F5F5F5',
                  baseColor3: 'E8E2E2',
                  baseColor4: 'F99417',
                  callback: showColor), 
                ColorPalette(
                  baseColor1: 'F2CD5C',
                  baseColor2: '400E32',
                  baseColor3: 'A61F69',
                  baseColor4: 'F2921D',
                  callback: showColor),
                ColorPalette(
                  baseColor1: '03C988',
                  baseColor2: '13005A',
                  baseColor3: '00337C',
                  baseColor4: '1C82AD',
                  callback: showColor),
                ColorPalette(
                  baseColor1: 'EBC7E6',
                  baseColor2: '645CBB',
                  baseColor3: 'A084DC',
                  baseColor4: 'BFACE2',
                  callback: showColor
                ),
              ],
            )
          ),
          
          
          /*child: Text(
              "SingleChildScrollView -> Column -> [ColorPalette, ColorPalette] "),*/
        )
      )
    );
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
