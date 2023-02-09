import 'package:flutter/material.dart';
import '../../utils/color_utils.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette({
    Key? key,
    // así se reciben en el constructor, por ejemplo
    required this.baseColor1,
    required this.baseColor2,
    required this.baseColor3,
    required this.baseColor4,
    required this.callback1,
    required this.callback2,
    required this.callback3,
    required this.callback4,
  }) : super(key: key);

  // atributos de la clase, por ejemplo
  final String baseColor1;
  final String baseColor2;
  final String baseColor3;
  final String baseColor4;

  // también se puede tener como un atributo un callback, necesiario ya que es un
  // widget sin estado, por ejemplo
  final Function(String) callback1;
  final Function(String) callback2;
  final Function(String) callback3;
  final Function(String) callback4;

  @override
  Widget build(BuildContext context) {
    // padding para crear espacio alrededor del widget
    return Padding(
      padding: const EdgeInsets.all(8.0),
      // vamos a mostrar los elementos en un row
      child: 
        Row(children: <Widget> [
          Expanded(
            flex:5,
            child: GestureDetector( 
              child: Container(
                height: 100, 
                color: ColorUtils.FromHex(baseColor1),
              ),
            ),
          ),
          Expanded(
            flex:4,
            child: GestureDetector( 
              child: Container(
                height: 100, 
                color: ColorUtils.FromHex(baseColor2),
              ),
            ),
          ),
          Expanded(
            flex:3,
            child: GestureDetector( 
              child: Container(
                height: 100, 
                color: ColorUtils.FromHex(baseColor3),
              ),
            ),
          ),
          Expanded(
            flex:2,
            child: GestureDetector( 
              child: Container(
                height: 100, 
                color: ColorUtils.FromHex(baseColor4),
              ),
            ),
          ),
        ],)
      
      /*Text(
          'Row -> [Expanded(flex: 4,GestureDetector(Container(height: 100, color: ColorUtils.FromHex(baseColor))) )]'),*/
    );
  }
}
