import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( 
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          _ShoopingTitleChevron(),
          SizedBox(height: 16,),
          Text('Vantagens exclusivas das nossas marcas \n preferidas.',
            style: TextStyle(color: Colors.grey),)

        ],
      )
    );
  }

  _ShoopingTitleChevron(){ 
    return Row( 
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [ 
        Text('Shooping', style: 
         TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
         Icon(MdiIcons.chevronRight)
        
      ],
    );
  }
}