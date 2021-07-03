import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
              padding: const EdgeInsets.only(left:5.0),
              child: TextField(
            decoration: InputDecoration(
              fillColor: secondaryColor, 
              filled: true,
              hintText: "Search",
              suffixIcon: Container(
              margin: const EdgeInsets.symmetric(horizontal: defaultPadding/2),
              padding: const EdgeInsets.all(defaultPadding * 0.75) ,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(50.0)) 
              ),
              child: SvgPicture.asset("assets/icons/Search.svg"),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: const BorderRadius.all(Radius.circular(30.0))
              )
              // enabledBorder: InputBorder.none,
              // focusedBorder: InputBorder.none
            ),
          ),
      )
    );
  }
}