import 'dart:async';
import 'dart:io';
import 'package:path/path.dart' as path;

/// Handles code modification of the the IDE itself.
///
/// This is only used for a POC, later on additional Flutter code will
/// be loaded in though a completely new OpenGL context (via surface textures)
class IdeSourceCodeModifier {



  Future writeWidget(String widgetName, String widgetSourceCode) async {
    var file = File("C:\\Users\\Norbert\\workspace\\flutter_ide\\ide\\generated\\&gen_code.dart");

    String content = """
import 'package:flutter/material.dart';

class \$displayWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return $widgetName() ?? SizedBox();
  }
}

$widgetSourceCode
    
    """;

    await file.writeAsString(content);
  }

}