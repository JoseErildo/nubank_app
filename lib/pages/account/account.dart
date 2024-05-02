import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_interface/controllers/controller_home_page.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _Account();
}

class _Account extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          _accountChevron(),
          SizedBox(height: 12),
          _moneyAccount(),
        ],
      ),
    );
  }

  _accountChevron(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Conta', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _moneyAccount(){
    return GetBuilder<ControllerHomePage>(
      init: ControllerHomePage(),
      builder: (controller){
        return Text(controller.saldo, style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),);
      },
    );
    
  }
}