import 'package:flutter/material.dart';
import 'package:rement_project/Drawers/hiddenDrawer.dart';
import 'package:rement_project/homePage.dart';
import 'package:rement_project/pages/home.dart';
import 'package:rement_project/pages/search.dart';

import '../pages/Account.dart';
import 'drawer_item.dart';
class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        //padding: EdgeInsets.zero,
        color: Colors.black,
        child:Padding(
          padding: const EdgeInsets.fromLTRB(24,80,24,0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(height: 40,),
              const Divider(thickness: 1,height: 10,color: Colors.white,),
              const SizedBox(height: 40,),
              DrawerItem(
                name: 'Home',
                icon: Icons.home,
                onPressed: () => onItemPressed(context,index: 0),
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                name: 'Search',
                icon: Icons.search,
                onPressed: () => onItemPressed(context,index: 1),
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                name: 'Exit',
                icon: Icons.logout,
                onPressed: () => onItemPressed(context,index: 2),
              ),
            ],
          ),
        )

      ),
    );
  }
  void onItemPressed(BuildContext context,{required int index}){
    Navigator.pop(context);
    switch(index){
      case 0: Navigator.push(context, MaterialPageRoute(builder: (context) => const homePage()));
      break;
      case 1: Navigator.push(context, MaterialPageRoute(builder: (context) => const search()));
      break;
      case 2: Navigator.push(context, MaterialPageRoute(builder: (context) => const account()));
      break;
      default:
        Navigator.pop(context);
        break;
    }
  }
  Widget headerWidget() {
    const url = '';
    return Row(
      children: [
        const SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const[
            Text('blank',style: TextStyle(fontSize: 15,color: Colors.white),),
            SizedBox(height: 10,),
            Text('blank@gmail.com',style: TextStyle(fontSize: 15,color: Colors.white),),
          ],
        )
      ],
    );
  }
}
