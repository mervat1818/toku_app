import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';
import 'package:audioplayers/audioplayers.dart';



class ListItem extends StatelessWidget {
  const ListItem({Key? key,required this.number, required this.color, required this.itemType}) : super(key: key);
  final Item number;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(number.image),
          ), //image


          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(number.japanWord,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                  Text(number.engWord,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18

                    ),
                  )
                ]
            ),
          ),


          const Spacer(
            flex: 1,
          ),


           Padding(
            padding: EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed:(){
                AudioCache player = AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(number.sound);
            }
              ,
              icon: Icon(Icons.play_arrow,
                  color: Colors.white,
                  size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
