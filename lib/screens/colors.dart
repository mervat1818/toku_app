import 'package:flutter/material.dart';
import '../components/list_item.dart';
import '../models/item_model.dart';



class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List <Item> numbers = const [
    Item(sound:'black.wav', image: 'assets/images/colors/color_black.png', engWord: 'black', japanWord: 'kuro'),
    Item(sound:'brown.wav', image: 'assets/images/colors/color_brown.png', engWord: 'brown', japanWord: 'otousan'),
    Item(sound:'dusty yellow.wav', image: 'assets/images/colors/color_dusty_yellow.png', engWord: 'dusty yellow', japanWord: 'hokori ppoi kiiro'),
    Item(sound:'gray.wav', image: 'assets/images/colors/color_gray.png', engWord: 'gray', japanWord: 'chairo'),
    Item(sound:'green.wav', image: 'assets/images/colors/color_green.png', engWord: 'green', japanWord: 'midori'),
    Item(sound:'red.wav', image: 'assets/images/colors/color_red.png', engWord: 'red', japanWord: 'aka'),
    Item(sound:'white.wav', image: 'assets/images/colors/color_white.png', engWord: 'white', japanWord: 'shiro'),
    Item(sound:'yellow.wav', image: 'assets/images/colors/yellow.png', engWord: 'yellow', japanWord: 'kiiro' ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: const Color(0xff79359f),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItem(number: numbers[index], color: Color(0xff79359f), itemType:'colors');
        },
      ) ,
    );
  }
}