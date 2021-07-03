import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constants.dart';
import 'profilecard.dart';
import 'searchfield.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Row(
                children: [
                  if(Responsive.isMobile(context))
                  IconButton(
                    icon: Icon(Icons.menu), 
                    onPressed: context.read<MenuController>().controlMenu
                  ),
                  if(!Responsive.isMobile(context))
                  Text(
                    "Dashboard",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  if(!Responsive.isMobile(context))
                  Spacer(),
                  SearchField(),
                  ProfileCard()
                ],
              )
            ],
          ),
        )
    );
  }
}



