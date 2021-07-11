import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:police_training/translations/locale_keys.g.dart';

class Instructions extends StatefulWidget {
  //const Instructions({ Key? key }) : super(key: key);

  @override
  _InstructionsState createState() => _InstructionsState();
}

class _InstructionsState extends State<Instructions> {
 @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Center(child: Text(LocaleKeys.Instructions_text.tr()),),),
    );
  }
}