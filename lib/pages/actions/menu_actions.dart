import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_interface/utils/colors_standart.dart';

class MenuItens extends StatelessWidget {
  const MenuItens({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            _ItemMenu(icon: MdiIcons.clover, name: 'Área Pix', isFirst: true),
            _ItemMenu(icon: MdiIcons.barcode,name: 'Pagar', isFirst: false),
            _ItemMenu(icon: MdiIcons.cash,name: 'Transferir', isFirst: false),
            _ItemMenu(icon: MdiIcons.cash,name: 'Depositar', isFirst: false),
            _ItemMenu(icon: MdiIcons.creditCard,name: 'Recarga', isFirst: false),
            _ItemMenu(icon: MdiIcons.heartOutline,name: 'Doação', isFirst: false),
            
          ],
          ),
      ),
    );
    
  }

  _ItemMenu({required IconData icon, required String name, required bool ? isFirst}){

    return Container(
          padding: (isFirst ?? false) ? EdgeInsets.only(right: 7, left: 20) :
          EdgeInsets.symmetric(horizontal: 7),
          child: Column( 
            children: [ 
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration( 
                  color: greyColor, borderRadius: BorderRadius.circular(48)
                ),
                child: Icon(icon),
              ),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          )
        );


  }
}