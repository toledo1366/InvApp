import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('No elements.'),
        Image.network('https://pbs.twimg.com/media/FLVdYE6WYAEA8On.jpg'),
      ],
    );
  }
}