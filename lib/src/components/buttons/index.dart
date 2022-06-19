import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HoverButton extends StatefulWidget {
  final String text;
  final Function? onPress;
  final Function? onLongPress;
  const HoverButton({ Key? key, required this.text, this.onPress, this.onLongPress }) : super(key: key);

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(widget.text),
        onPressed: (){ if (widget.onPress != null) {widget.onPress!();} },
        onLongPress: (){ if (widget.onLongPress != null) {widget.onLongPress!();} },
      ),
    );
  }
}