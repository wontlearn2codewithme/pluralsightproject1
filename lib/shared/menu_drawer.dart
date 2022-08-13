import 'package:flutter/material.dart';
import 'package:pluralsightproject1/screens/bmi_screen.dart';
import 'package:pluralsightproject1/screens/intro_screen_page.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = [
      'Home',
      'BMI Calculator',
      'Weather',
      'Training'
    ];

    List<Widget> menuItems = [];
    menuItems.add(
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blueGrey,
        ),
        child: Text(
          'Globo Fitness',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
    );
    for (var element in menuTitles) {
      Widget screen = Container();
      menuItems.add(ListTile(
        title: Text(
          element,
          style: const TextStyle(fontSize: 18),
        ),
        onTap: (() {
          switch (element) {
            case 'Home':
              screen = const IntroScreenPage();
              break;
            case 'BMI Calculator':
              screen = const BMIScreen();
              break;
            default:
          }
          Navigator.pop(context);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen));
        }),
      ));
    }
    return menuItems;
  }
}
