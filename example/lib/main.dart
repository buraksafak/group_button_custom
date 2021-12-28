import 'package:example/examples/customizable_example/customizable_example.dart';
import 'package:example/examples/extended_example/example.dart';
import 'package:example/examples/provider_example/ui/app.dart';
import 'package:example/examples/styles_example/example.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

/// You can use [GroupButtonExtendedExample]
/// to check all package [GroupingType]'s in one place

/// /// You can use [StylesExample]
/// to check all package style's configuration

/// You can use [GroupButtonProviderExample]
/// using this package with state - managment package like provider

/// You can use [CustomizableExample]
/// to check package power

void main() {
  runApp(CustomizableExample());
}

class CommonExample extends StatelessWidget {
  final controller = GroupButtonController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.grey[100].withOpacity(0.1),
          backgroundColor: Colors.white,
          title: Text(
            'GroupButton 4.0.0',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        body: Center(
          child: GroupButton.checkbox(
            controller: controller,
            buttons: List.generate(25, (i) => '${i + 1}'),
            onSelected: (i, selected) => debugPrint('Button #$i $selected'),
          ),
        ),
      ),
    );
  }
}
