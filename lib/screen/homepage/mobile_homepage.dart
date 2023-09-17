import 'package:flutter/material.dart';
import 'package:rpg_app/screen/homepage/widgets/CustomCard.dart';
import 'package:rpg_app/screen/homepage/widgets/CustomDrawer.dart';
import 'package:rpg_app/screen/homepage/widgets/CustomLine.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({super.key});

  @override
  State<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("M O B I L E"),
      ),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return const CustomCard();
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: 1),
                  duration:
                      Duration(milliseconds: (500 + (index * 50)).toInt()),
                  builder: (context, value, child) {
                    return Opacity(
                        opacity: value,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10 * value),
                          child: child,
                        ));
                  },
                  child: const CustomLine(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
