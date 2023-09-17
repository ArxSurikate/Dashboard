import 'package:flutter/material.dart';
import 'package:rpg_app/screen/homepage/widgets/CustomCard.dart';
import 'package:rpg_app/screen/homepage/widgets/CustomCardTwo.dart';
import 'package:rpg_app/screen/homepage/widgets/CustomDrawer.dart';
import 'package:rpg_app/screen/homepage/widgets/CustomLine.dart';

class DesktopHomePage extends StatefulWidget {
  const DesktopHomePage({super.key});

  @override
  State<DesktopHomePage> createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("D E S K T O P"),
      ),
      body: Row(
        children: [
          const CustomDrawer(),
          Expanded(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 3,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 3,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        if (index.isEven) {
                          return const CustomCard();
                        } else {
                          return const CustomCardTwo();
                        }
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
                        duration: Duration(
                            milliseconds: (500 + (index * 50)).toInt()),
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
          ),
        ],
      ),
    );
  }
}
