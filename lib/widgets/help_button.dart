import 'package:flutter/material.dart';
import 'package:know_ur_words/const/help_text.dart';
import 'package:know_ur_words/utils/string_hardcoded.dart';
import 'package:know_ur_words/widgets/app_container.dart';

class HelpButton extends StatelessWidget {
  const HelpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (context) => AlertDialog(
            title: Text("Rules".hardcoded),
            content: Text(helpText),
            actionsAlignment: MainAxisAlignment.center,
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("OK".hardcoded),
              )
            ]),
      ),
      child: const AppContainer(
        width: 128,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Help "),
              Icon(Icons.question_mark),
            ],
          ),
        ),
      ),
    );
  }
}
