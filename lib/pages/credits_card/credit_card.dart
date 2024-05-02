import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_interface/controllers/controller_home_page.dart';
import 'package:nubank_interface/controllers/controller_home_page.dart';
import 'package:nubank_interface/utils/colors_standart.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 12,
        children: [ 

          _iconCreditCard(),
          _textCreditCard(),
          _invoice(),
          _limitDisponivel(),
          _installments()
        ],
      ),
    );
  }

  _iconCreditCard(){
    return Icon(MdiIcons.creditCard);
  }

  _textCreditCard(){
    return Row( 
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text('Cartão de crédito',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),

        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _invoice(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Fatura atual',
        style: TextStyle(color: Colors.grey),),
        SizedBox(height: 12,),

        GetBuilder<ControllerHomePage>(
          init: ControllerHomePage(),
          builder: (controllerHomePage){
            return Text(controllerHomePage.creditCardValue,
              style: TextStyle(
                fontSize: 22, 
                fontWeight: FontWeight.bold,
                ));
            }),
      ],
    );
  }

  _limitDisponivel(){
    return Text('Limite disponível de R\$ 4.000,00',
    style: TextStyle(color: Colors.grey,),);
  }

  _installments(){
    return Container( 
      margin: EdgeInsets.only(top:4, bottom: 16),
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration( 
        color: greyColor, borderRadius: BorderRadius.circular(15)
      ),
      child: Container( 
        margin: EdgeInsets.symmetric(horizontal: 6),
        child: Text('Parcelar compras', style: 
        TextStyle(fontWeight:  FontWeight.bold),),
      ),
    );
  }
}