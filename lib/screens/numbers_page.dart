import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/models/item_model.dart';



class NumbersPage extends StatelessWidget {
  const NumbersPage ({Key? key}) : super(key: key);
  final List <Item> numbers = const [
    Item(sound:'number_one_sound.mp3', image: 'assets/images/numbers/number_one.png', engWord: 'One', japanWord: 'ichi'),
    Item(sound:'number_two_sound.mp3', image: 'assets/images/numbers/number_two.png', engWord: 'Two', japanWord: 'ni'),
    Item(sound:'number_three_sound.mp3', image: 'assets/images/numbers/number_three.png', engWord: 'Three', japanWord: 'san'),
    Item(sound:'number_four_sound.mp3', image: 'assets/images/numbers/number_four.png', engWord: 'Four', japanWord: ' yon'),
    Item(sound:'number_five_sound.mp3', image: 'assets/images/numbers/number_five.png', engWord: 'Five', japanWord: 'go'),
    Item(sound:'number_six_sound.mp3', image: 'assets/images/numbers/number_six.png', engWord: 'Six', japanWord: 'roku'),
    Item(sound:'number_seven_sound.mp3', image: 'assets/images/numbers/number_seven.png', engWord: 'Seven', japanWord: 'nana'),
    Item(sound:'number_eight_sound.mp3', image: 'assets/images/numbers/number_eight.png', engWord: 'Eight', japanWord: 'hachi' ),
    Item(sound:'number_nine_sound.mp3', image: 'assets/images/numbers/number_nine.png', engWord: 'Nine', japanWord: 'ku'),
    Item(sound:'number_ten_sound.mp3', image: 'assets/images/numbers/number_ten.png', engWord: 'Ten', japanWord: 'Ju'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
        return ListItem(number: numbers[index], color: Color(0xffEF9235 ), itemType: 'numbers');
      },

      ) ,
    );
  }
}


