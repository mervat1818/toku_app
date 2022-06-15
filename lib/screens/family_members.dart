import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../models/item_model.dart';





class FamilyMembers extends StatelessWidget {
  const FamilyMembers({Key? key}) : super(key: key);

  final List <Item> numbers = const [
    Item(sound:'daughter.wav', image: 'assets/images/family_members/family_daughter.png', engWord: 'Daughter', japanWord: 'ojousan'),
    Item(sound:'father.wav', image: 'assets/images/family_members/family_father.png', engWord: 'Father', japanWord: 'otousan'),
    Item(sound:'grand father.wav', image: 'assets/images/family_members/family_grandfather.png', engWord: 'Grand Father', japanWord: 'ojiisan'),
    Item(sound:'grand mother.wav', image: 'assets/images/family_members/family_grandmother.png', engWord: 'Grand Mother', japanWord: ' obaasan'),
    Item(sound:'mother.wav', image: 'assets/images/family_members/family_mother.png', engWord: 'Mother', japanWord: 'okaasan'),
    Item(sound:'older bother.wav', image: 'assets/images/family_members/family_older_brother.png', engWord: 'Older Brother', japanWord: 'oniisan'),
    Item(sound:'older sister.wav', image: 'assets/images/family_members/family_older_sister.png', engWord: 'Older Sister', japanWord: 'oneesan'),
    Item(sound:'son.wav', image: 'assets/images/family_members/family_son.png', engWord: 'Son', japanWord: 'musukosan' ),
    Item(sound: 'younger brohter.wav', image: 'assets/images/family_members/family_younger_brother.png', engWord: 'Younger Brother', japanWord: 'otoutosan'),
    Item(sound:'younger sister.wav', image: 'assets/images/family_members/family_younger_sister.png', engWord: 'Younger Sister', japanWord: 'imoutosan'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('Family Members'),
            backgroundColor: const Color(0xff558B37),
          ),
          body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (BuildContext context, int index) {
              return ListItem(number: numbers[index], color: Color(0xff558B37), itemType:'family_members');
            },

          ) ,
        );
  }
}
