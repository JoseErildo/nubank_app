import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_interface/controllers/controller_home_page.dart';
import 'package:nubank_interface/utils/colors_standart.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';



class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _Header();
}

class _Header extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _Profile(),
              _Options(),
            ],
          ),
          SizedBox(height: 20),
          _Welcome(),
        ],
      )
    );
  }

  _Profile (){
    return GestureDetector(
      onTap: () {},
      child: Container( 
        margin: EdgeInsets.only(left: 20, top: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),color: secondaryPurple
        ),
        child: IconButton( 
          onPressed: () {},
          icon: Icon( 
            MdiIcons.accountOutline,
          )
        ),
      )
    );
  }

  _Options(){
    return Row(
      children: [
        GetBuilder(
          init: ControllerHomePage(),
          builder: (ControllerHomePage) {
            return IconButton(
              onPressed: () => ControllerHomePage.showValue(), 
              icon: Icon(
                ControllerHomePage.eyesValue? MdiIcons.eyeOutline : MdiIcons.eyeOff,
                color: Colors.white,
              ));
          }
        ),

        IconButton(
          onPressed: () {}, 
          icon: Icon(
            MdiIcons.helpCircleOutline,
            color: Colors.white,
          )),

        IconButton(
          onPressed: () {}, 
          icon: Icon(
            Icons.person_add_alt_1_outlined,
            color: Colors.white,
          )),
      ],
    );
  }

  _Welcome(){
    return Container( 
      margin: EdgeInsets.only(left: 20, bottom: 20),
      child: Text("Olá, Dev José Erildo", 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold
                ),),
    );
  }

}

