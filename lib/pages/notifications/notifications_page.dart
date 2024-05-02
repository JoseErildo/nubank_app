import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nubank_interface/utils/colors_standart.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row( 
        children: [ 
          _notification(primeiroTexto: "Seu " , segundoTexto: "Informe de \nrendimentos de 2022 ",terceiroTexto: "está pronto...."),
          _notification(primeiroTexto: "Chegou o ", segundoTexto: "débito \nautomático ",terceiroTexto:"da fatura do...."),
          _notification(primeiroTexto:"Conheça " , segundoTexto: "Nubank Vida\n",terceiroTexto: "um seguro simples \ne que cab...."),
        ],
      )
    );
  }

  _notification({required String primeiroTexto,required String segundoTexto, required String terceiroTexto}){
    return Container(
      width: MediaQuery.of(context).size.width*.6,
      margin: EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: EdgeInsets.all(24),

      decoration: BoxDecoration( 
        color: greyColor,
        borderRadius: BorderRadius.circular(16),

      ),
      child: RichText( 
        text: TextSpan( 
          children: [ 
            TextSpan(text: primeiroTexto, style: TextStyle(color: Colors.black, fontSize: 16)),
            TextSpan(text: segundoTexto,
            style: TextStyle(color: backgroundColor, fontSize: 16)),
            TextSpan(text: terceiroTexto,
            style: TextStyle(color: Colors.black, fontSize: 16))
          ]
        )
      )
    );
  }

}

