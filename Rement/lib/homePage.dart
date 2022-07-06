import 'package:flutter/material.dart';
import 'package:rement_project/Drawers/drawer.dart';
import 'package:rement_project/pages/subjects.dart';
class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body:  CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.deepPurple,
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   onPressed: () {},
            // ),
            //title: Text('R E M E N T'),
            floating: true,
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              //background: Image.asset('name'), could add an image also
              background: Container(
                color: Colors.pink, //change if u want
              ),
              title: Text('R E M E N T'),
              centerTitle: true,
            ),
          ),
          Subjects(text: 'Placement',icon: '',),
          Subjects(text: 'Technical',icon: '',),
          Subjects(text: 'Cultural',icon: '',),
          Subjects(text: 'Academic',icon: '',),
        ],

      ),
      drawer: MenuDrawer(),
    );
  }
}


