import 'package:flutter/material.dart';

class FGroupActionHorizontal extends StatelessWidget {
  const FGroupActionHorizontal({
    super.key,
    required this.assetPathWithAction,
  });

  final Map<String, Function> assetPathWithAction;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: _generateWidgetByAction(),
    );
  }

  List<Widget> _generateWidgetByAction() {
    var listWidget = <Widget>[];
    assetPathWithAction.forEach((key, value) {
      listWidget.add(InkWell(
        onTap: () {
          value();
        },
        child: Image.asset(
          key,
          width: 32,
          height: 32,
        ),
      ));
    });
    return listWidget;
  }
}
