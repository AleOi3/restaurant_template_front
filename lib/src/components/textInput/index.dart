import 'package:firstapp/src/components/textInput/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './index.dart';

class InputWithLabel extends StatefulWidget {
  final String label;
  final Function? callback;
  final TextStyle? style;
  final bool autocorrect;
  final bool obscureText;
  const InputWithLabel({ Key? key, required this.label, this.callback, this.style, required this.autocorrect, required this.obscureText }) : super(key: key,);

  @override
  State<InputWithLabel> createState() => InputWithLabelState();
}

class InputWithLabelState extends State<InputWithLabel>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: TextLabelStyle.normalText),
        TextField(autocorrect: (widget.autocorrect == true)? true: false, obscureText: (widget.obscureText == true)? true: false, onChanged: (valor) {
          widget.callback!(valor);
        },)
      ],
    );
  }
}