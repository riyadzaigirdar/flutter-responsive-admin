import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget{
  final changeNavigation;
  final String selected;

  SideMenu(this.changeNavigation, this.selected);
  @override
  Widget build(BuildContext context){
    return (
      Expanded(
          // it takes 1/6 of the screen
          // default screen in 1
          child: Container(
            child: ListView(
              children: [
                DrawerHeader(
                  child: Image.asset("assets/images/logo.png")
                ),
                DrawerListTile("Dashboard", "assets/icons/menu_dashbord.svg", changeNavigation, selected),
                DrawerListTile("Transaction","assets/icons/menu_tran.svg", changeNavigation, selected),
                DrawerListTile("Task","assets/icons/menu_task.svg", changeNavigation, selected),
                DrawerListTile("Documents","assets/icons/menu_doc.svg", changeNavigation, selected),
                DrawerListTile("Store","assets/icons/menu_store.svg", changeNavigation, selected),
                DrawerListTile("Notifications","assets/icons/menu_notification.svg", changeNavigation, selected),
                DrawerListTile("Settings","assets/icons/menu_setting.svg", changeNavigation, selected),
              ],
            ),
          )
        )
    );
  }
}


class DrawerListTile extends StatelessWidget {

  final String text, svg;
  final press;
  final String selected;
  // EVABE KORLE POSITIONAL ARGUMENT
  DrawerListTile(this.text, this.svg, this.press, this.selected);

  // EVABE KORLE KWARGUMENT
  // const DrawerListTile({
  //   Key key,
  //   @required this.text,
  //   @required this.svg,
  //   @required this.press
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(svg, color: Colors.white,),
      title: Text(text, style: TextStyle(color: selected == text ? Colors.white : Colors.white54),),
      trailing: GestureDetector(child:Icon(Icons.edit, size: 15,), onDoubleTap: ()=>{},),
      onTap: (){
        press(text);
        },
      onLongPress: (){},
    );
  }
}