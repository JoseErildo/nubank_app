import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_interface/utils/colors_standart.dart';

class Security extends StatelessWidget {
  const Security({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( 
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          Text('Seguros', 
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

          Text('Proteção para você cuidar do que importa', 
          style: TextStyle(color: Colors.grey),),

          _securityButton(),
        ],
      ),
    );
  }

  _securityButton(){
    return Container( 
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(18),
        color: greyColor
      ),
      margin: EdgeInsets.only( top: 12, bottom: 12),
      padding: EdgeInsets.all(16),
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
          Row(
            children: [
              Icon(MdiIcons.heartOutline),
              SizedBox(width: 12),
              Text('Seguro de vida', style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),

          Text(' Conhecer', style: TextStyle(color: backgroundColor, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}