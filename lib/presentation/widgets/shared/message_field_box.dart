import 'package:flutter/material.dart';


class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {

    final textcontroller= TextEditingController();
    final focusNode=FocusNode();
    final colors=Theme.of(context).colorScheme;

    final outlineInputBorder=UnderlineInputBorder(
      borderSide: BorderSide(color:colors.primary),
      borderRadius:BorderRadius.circular(40)
       );

    final inputDecoration=InputDecoration(
        hintText: "End your message with a ??",
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon:IconButton(onPressed: (){
          final textvalue=textcontroller.value.text;
          onValue(textvalue);
          textcontroller.clear();
        }, icon: Icon(Icons.send_outlined)) ,
      );

    return TextFormField(
      onTapOutside: (event){
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textcontroller,
      decoration:inputDecoration,
      onFieldSubmitted: (value){
        onValue(value);
        textcontroller.clear();
        focusNode.requestFocus();
      },

    );
  }
}