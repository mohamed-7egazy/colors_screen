import 'package:flutter/material.dart';
import 'package:screens/views/screen_view.dart';
import 'package:screens/widgets/list.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.5),
              ]),
            ),
            child: const Text(
              'Colors Screen',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: GridView.count(
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 3,
          children: colorsList
              .map((colorItem) => InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenView(colorItem: colorItem),
                  ));
            },
            child: Container(
              margin: const EdgeInsets.only(
                  top: 5, bottom: 10, right: 10, left: 10),
              decoration: BoxDecoration(
                  color: colorItem,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(5, 5),
                      color: Colors.grey,
                      blurRadius: 4,
                    )
                  ]),
            ),
          ))
              .toList(),
        ),
      ),
    );
  }
}
