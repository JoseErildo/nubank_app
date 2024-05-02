import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_interface/pages/credits_card/credit_card.dart';
import 'package:nubank_interface/pages/credits_card/my_credit_card.dart';
import 'package:nubank_interface/pages/home/model/header.dart';
import 'package:nubank_interface/pages/investments/investiments.dart';
import 'package:nubank_interface/pages/account/account.dart';
import 'package:nubank_interface/pages/actions/menu_actions.dart';
import 'package:nubank_interface/pages/notifications/notifications_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}


class _HomePage extends State<HomePage>{
  
  @override
  Widget build(context){
    return Scaffold(
      //backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView( 
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              Account(),
              MenuItens(),
              Divider(thickness: 1.6,),
              CreditCards(),
              Notifications(),
              Divider(thickness: 1.6,),
              CreditCard(),
              Divider(thickness: 1.6,),
              Investiments()
              
              
            ],
          ),
        ),
      )
    );
  }

  PreferredSize _appBar(){
    return PreferredSize(
      preferredSize: Size.fromHeight(0), 
      child: AppBar(
        elevation: 100,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ));
  }
}

