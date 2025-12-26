import 'package:flutter/material.dart';


class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final colors=Theme.of(context).colorScheme;

    final outlineInputBorder=UnderlineInputBorder(
      borderSide: BorderSide(color:colors.primary),
      borderRadius:BorderRadius.circular(40)
       );

    final inputDecoration=InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon:IconButton(onPressed: (){}, icon: Icon(Icons.send_outlined)) ,
      );

    return TextFormField(
      decoration:inputDecoration,
      onFieldSubmitted: (value){
        debugPrint('Submit value: $value');
      },
      onChanged: (value){
        debugPrint('changed: $value');
      },
    );
  }
}