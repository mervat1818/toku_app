import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/screens/colors.dart';
import 'package:toku/screens/family_members.dart';
import 'package:toku/screens/numbers_page.dart';
import '../components/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: const Text('Toku'),
        backgroundColor: const Color(0xff4D3129),
      ),
      body: Column(
        children: [
          Category(
            onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context){
              return NumbersPage();
            }));},
            text: 'Number',
            color: const Color(0xffEF9235),
          ),



          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return FamilyMembers();
              }));},
            text: 'Family Members',
            color: Color(0xff558B37),
          ),



          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ColorsPage();
              }));},
            text: 'Colors',
            color: Color(0xff79359f),
          ),
        ],
      ),
    );
  }
}