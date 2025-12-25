import 'package:flutter/material.dart';


class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors=Theme.of(context).colorScheme;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
            Container(
                decoration: BoxDecoration(
                    color: colors.secondary,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Text("hola Mi amor",style: TextStyle(color: Colors.white)),
                ),
            ),
            const SizedBox(height: 10),
            // todo:image
            _ImageBubble(),
        ],
    );
  }
}

class _ImageBubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        "https://yesno.wtf/assets/no/16-b66d2db7543f5259c86abc166d6901cf.gif",
        width: size.width *0.7,
        height: 150,
        fit: BoxFit.cover,
        ));
  }
}