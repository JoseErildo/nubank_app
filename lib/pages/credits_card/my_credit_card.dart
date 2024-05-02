import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_interface/utils/colors_standart.dart';

class CreditCards extends StatefulWidget {
  const CreditCards({super.key});

  @override
  State<CreditCards> createState() => _CreditCardsState();
}

class _CreditCardsState extends State<CreditCards> {
  @override
  Widget build(context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.fromLTRB(16, 10, 20, 10),
      decoration: BoxDecoration( 
        color: greyColor, borderRadius: BorderRadius.circular(16),
      ),
      child: Row( 
        children: [
          Icon(MdiIcons.creditCard, color: Colors.black),
          SizedBox(width: 12,),
          Text('Meus cartões', style: TextStyle(fontWeight: FontWeight.bold,
          color: Colors.black),),
        ],
      ),
    );
  }
}