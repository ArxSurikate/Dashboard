import 'package:flutter/material.dart';
import 'package:rpg_app/screen/homepage/widgets/CustomCard.dart';
import 'package:rpg_app/screen/homepage/widgets/CustomDrawer.dart';
import 'package:rpg_app/screen/homepage/widgets/CustomLine.dart';

class TabletDashboardPage extends StatelessWidget {
  const TabletDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 2 / 1,
          child: SizedBox(
            child: GridView.builder(
              itemCount: 4,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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
                duration: Duration(milliseconds: (500 + (index * 50)).toInt()),
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
    );
  }
}
