import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_interface/utils/colors_standart.dart';

class Investiments extends StatelessWidget {
  const Investiments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textInvestimentsChevron(),
          _investimentsValue(),
          _consultValue()
        ],
      ),
    );
  }

  _textInvestimentsChevron(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Investimentos",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _investimentsValue(){
    return Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: Text('O jeito Nu de investir: sem asteriscos, \n linguagem fácil à partir de R\$1. Saiba mais.',
            style: TextStyle(color: Colors.grey),),
      
    );
  }

  _consultValue(){
    return Container( 
      margin: EdgeInsets.only(top:12, bottom: 12),
      decoration: BoxDecoration( 
        color: greyColor, borderRadius: BorderRadius.circular(15)
      ),
      padding: EdgeInsets.all(16),
      child: Row( 
        children: [ 
          Icon(MdiIcons.cash),
          Container( 
            child: Text('Consultar saldo para transferência',
            style:  TextStyle(fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}